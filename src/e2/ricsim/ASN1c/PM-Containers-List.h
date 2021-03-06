/*
 * Generated by asn1c-0.9.29 (http://lionet.info/asn1c)
 * From ASN.1 module "E2SM-KPM-IEs"
 * 	found in "/home/rshacham/e2sm-kpm-v01.02.asn"
 * 	`asn1c -fcompound-names`
 */

#ifndef	_PM_Containers_List_H_
#define	_PM_Containers_List_H_


#include <asn_application.h>

/* Including external dependencies */
#include <constr_SEQUENCE.h>

#ifdef __cplusplus
extern "C" {
#endif

/* Forward declarations */
struct PF_Container;
struct RAN_Container;

/* PM-Containers-List */
typedef struct PM_Containers_List {
	struct PF_Container	*performanceContainer;	/* OPTIONAL */
	struct RAN_Container	*theRANContainer;	/* OPTIONAL */
	/*
	 * This type is extensible,
	 * possible extensions are below.
	 */
	
	/* Context for parsing across buffer boundaries */
	asn_struct_ctx_t _asn_ctx;
} PM_Containers_List_t;

/* Implementation */
extern asn_TYPE_descriptor_t asn_DEF_PM_Containers_List;
extern asn_SEQUENCE_specifics_t asn_SPC_PM_Containers_List_specs_1;
extern asn_TYPE_member_t asn_MBR_PM_Containers_List_1[2];

#ifdef __cplusplus
}
#endif

/* Referred external types */
#include "PF-Container.h"
#include "RAN-Container.h"

#endif	/* _PM_Containers_List_H_ */
#include <asn_internal.h>
