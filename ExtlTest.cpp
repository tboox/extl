//#include "stdio.h"

#define EXTL_NEW_PLATFORM_ENABLE
#define EXTL_DEBUG
#define EXTL_UNICODE 
//#include "extl/intelligence/intelligence.h"
//#include "extl/counter/counter.h"
//#include "extl/extl.h"
//#include "extl/media/media.h"
//#include "extl/test/test.h"
#include "extl/prefix.h"
//#include "fstream"
EXTL_NS_USING_NAMESPACE(extl)

//using namespace extl::media;


int hamming_d(int v1, int v2, int bit_n)
{
	int count = 0;
	for (int i = 0; i < bit_n; ++i)
	{
		int v1_i = (int(0x1) == ((v1 >> i) & int(0x1)));
		int v2_i = (int(0x1) == ((v2 >> i) & int(0x1)));
		if (v1_i != v2_i) count++;
	}
	return count;
}

int main()
{
	printf("%d\n", hamming_d(5, 10, 5));
	/*std::ifstream fin("data/test.ts", std::ios::in | std::ios::binary);

	e_byte_t buf[188];
	ts::packet pck;

	for (int i = 0; i < 10; i++)
	{
		fin.read((char*)buf, 188);
		pck.decode(buf);

		// transport header
		printf("transport header:\n"																);
		printf("sync_byte: %#x\n",						pck.header().sync_byte()					);
		printf("transport_error_indicator: %u\n",		pck.header().transport_error_indicator()	);
		printf("payload_unit_start_indicator: %u\n",	pck.header().payload_unit_start_indicator()	);
		printf("transport_priority: %u\n",				pck.header().transport_priority()			);
		printf("pid: %#x\n",							pck.header().pid()							);
		printf("transport_scrambling_control: %u\n",	pck.header().transport_scrambling_control()	);
		printf("adaptation_field_control: %u\n",		pck.header().adaptation_field_control()		);
		printf("continuity_counter: %u\n",				pck.header().continuity_counter()			);

		// the end
		if (pck.is_null()) break;

		// cannot be analyzed
		if	(	pck.is_scrambling() 
			||	pck.exists_error() 
			||	!pck.is_valid()
			)
		{
			printf("this packet cannot be analyzed!");
			break;
		}

		// adaptation field
		if (pck.adaptation().exists())
		{
			printf("\t adaptation_field header:\n"																					);
			printf("\t adaptation_field_length: %u\n",				pck.adaptation().header().adaptation_length()					);
			printf("\t discontinuity_indicator: %u\n",				pck.adaptation().header().discontinuity_indicator()				);
			printf("\t random_access_indicator: %u\n",				pck.adaptation().header().random_access_indicator()				);
			printf("\t elementary_stream_priority_indicator: %u\n", pck.adaptation().header().elementary_stream_priority_indicator());
			printf("\t pcr_flag: %u\n",								pck.adaptation().header().pcr_flag()							);
			printf("\t opcr_flag: %u\n",							pck.adaptation().header().opcr_flag()							);
			printf("\t splicing_point_flag: %u\n",					pck.adaptation().header().splicing_point_flag()					);
			printf("\t transport_private_data_flag: %u\n",			pck.adaptation().header().private_data_flag()					);
			printf("\t extension_flag: %u\n",						pck.adaptation().header().extension_flag()						);

			if (pck.adaptation().pcr().exists())
			{
				printf("\t pcr: %I64u\n",			pck.adaptation().pcr().value()				);
				printf("\t pcr_base: %I64u\n",		pck.adaptation().pcr().base()				);
				printf("\t pcr_extension: %u\n",	pck.adaptation().pcr().extension()			);
			}

			if (pck.adaptation().opcr().exists())
			{
				printf("\t pcr: %I64u\n",			pck.adaptation().opcr().value()				);
				printf("\t pcr_base: %I64u\n",		pck.adaptation().opcr().base()				);
				printf("\t pcr_extension: %u\n",	pck.adaptation().opcr().extension()			);
			}

			if (pck.adaptation().splicing().exists())
			{
				printf("\t splice_countdown: %u\n",	pck.adaptation().splicing().countdown()	);
			}

			if (pck.adaptation().private_data().exists())
			{
				printf("\t private_data_length: %u\n",	pck.adaptation().private_data().size()	);
				for (int i = 0; i < (int)pck.adaptation().private_data().size(); ++i)
				{
					printf("\t private_data: %02x\n",	pck.adaptation().private_data().data()[i]	);
				}
			}

			if (pck.adaptation().extension().exists())
			{
				printf("\t\t adaptation_extension_length: %u\n",	pck.adaptation().extension().size()	);

				if (pck.adaptation().extension().exists_ltw())
				{
					printf("\t\t ltw_valid_flag: %u\n",	pck.adaptation().extension().ltw().ltw_valid_flag	);
					printf("\t\t ltw_offset: %u\n",		pck.adaptation().extension().ltw().ltw_offset	);
				}

				if (pck.adaptation().extension().exists_piecewise_rate())
				{
					printf("\t\t piecewise_rate: %u\n",	pck.adaptation().extension().piecewise_rate()	);
				}

				if (pck.adaptation().extension().exists_seamless_splice())
				{
					printf("\t\t splice_type: %u\n",	pck.adaptation().extension().seamless_splice().splice_type	);
				}
			}
		}

		printf("\n");
		pck.encode();
	}
	

	fin.close();*/
	getchar(); 
	return 0;
}

