#include <ap_int.h>
#include <hls_stream.h>

typedef float dt;


//#define DBGPRINT

#ifdef DBGPRINT
#warning You should never see this when synthesizing!!!!
#include <iostream>
#endif

using namespace hls;

#define STATES X(waiting_for_latch), X(waiting_to_read), X(waiting_to_write)

#ifdef DBGPRINT
#define X(x) #x
char *names[] = {STATES};
#undef X
#endif

void latcherfloat(
	stream<dt> &in,
	stream<dt> &out,
	ap_uint<1> latch
	) {
#pragma HLS INTERFACE axis register both port=out
#pragma HLS INTERFACE axis register both port=in
#pragma HLS INTERFACE ap_ctrl_none port=return
#pragma HLS DATAFLOW

#define X(x) x
	static enum {STATES} state = waiting_for_latch;
#undef X
	static dt tmp;
#ifdef DBGPRINT
	std::cout << "state = " << names[state] << std::endl;
#endif
	switch(state) {
		case waiting_for_latch:
			if (latch == 1) state = waiting_to_read;
			break;
		case waiting_to_read:
			if (!in.empty()) {
				in >> tmp;
				state = waiting_to_write;
			}
			break;
		case waiting_to_write:
			if (!out.full()) {
				out << tmp;
				state = waiting_for_latch;
			}
			break;
	}
#ifdef DBGPRINT
	std::cout << "\tTransitioning to state " << names[state] << "..." << std::endl;
#endif
}
