.class public interface abstract Lmega/car/UDPBAP;
.super Ljava/lang/Object;
.source "UDPBAP.java"


# annotations
.annotation runtime Lmega/car/annotation/DomainDefine;
    domainId = 0x35
    permission = "mega.car.permission.UDPBAP"
    source = 0x0
.end annotation


# static fields
.field public static final AUDIOCONTROLLER_ACTIVESOURCENAME_SOURCENAME:I = 0x35000003
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final AUDIOCONTROLLER_ACTIVESOURCE_SOURCETYPE:I = 0x35000004
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AUDIOCONTROLLER_CURRENTSTATIONINFO_PI_TYPE:I = 0x35000006
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AUDIOCONTROLLER_CURRENTSTATIONINFO_PRIMARYINFORMATION:I = 0x35000005
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final AUDIOCONTROLLER_CURRENTSTATIONINFO_SECONDARYINFORMATION:I = 0x35000007
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final AUDIOCONTROLLER_CURRENTSTATIONINFO_SI_TYPE:I = 0x35000008
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AUDIOCONTROLLER_CURRENTVOLUMEEXTENDED_GENERICVOLUME:I = 0x35000001
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AUDIOCONTROLLER_CURRENTVOLUME_ENTERTAINMENTVOLUME:I = 0x35000002
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AUDIOCONTROLLER_MUTE:I = 0x3500000a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AUDIOCONTROLLER_OPERATIONSTATE_STATE:I = 0x35000029
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AUDIOCONTROLLER_PLAYPOSITION_TIMEPOSITION:I = 0x35000025
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AUDIOCONTROLLER_PLAYPOSITION_TOTALPLAYTIME:I = 0x35000026
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final AUDIOCONTROLLER_SOURCESTATE_STATEINFO_SCOPE:I = 0x35000009
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MGR_ID:I = 0x35

.field public static final PERMISSION:Ljava/lang/String; = "mega.car.permission.UDPBAP"

.field public static final TELCONTROLLER_ACCEPTCALL:I = 0x35000019
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_ACCEPTCALL_ACCEPTCALL_RESULT:I = 0x3500001a
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_ACTIVEUSER_USERNAME:I = 0x3500001f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TELCONTROLLER_CALLDURATIONSYNC_TIMESTAMPCALL0:I = 0x35000018
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_CALLINFO_CATEGORY0:I = 0x35000014
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_CALLINFO_PBNAME0:I = 0x35000012
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TELCONTROLLER_CALLINFO_TELNUMBER0:I = 0x35000013
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TELCONTROLLER_CALLSTATE_CALLSTATE0:I = 0x35000010
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_CALLSTATE_CALLTYPE0:I = 0x35000011
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_HANDSFREEONOFF_HANDSFREEONOFF:I = 0x35000015
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_HANGUPCALL:I = 0x3500001b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_HANGUPCALL_HANGUPCALL_RESULT:I = 0x3500001c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_MICROMUTEONOFF_MICROMUTEONOFF:I = 0x35000016
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_MISSEDCALLINDICATION_MISSEDCALLS:I = 0x3500001d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_MISSEDCALLINDICATION_MISSEDNUMBERS:I = 0x3500001e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_MOBILEBATTERYLEVEL_HANDSET1:I = 0x35000022
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_MOBILEBATTERYLEVEL_HANDSET2:I = 0x35000023
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_MOBILEBATTERYLEVEL_MOBILE1:I = 0x35000020
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_MOBILEBATTERYLEVEL_MOBILE2:I = 0x35000021
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_MOBILEBATTERYLEVEL_WARNINGLEVEL:I = 0x35000024
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_NETWORKPROVIDER_NETWORKPROVIDERNAME:I = 0x3500000c
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TELCONTROLLER_NETWORKPROVIDER_NETWORKPROVIDERSTATE:I = 0x3500000b
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_NETWORKPROVIDER_SERVICEPROVIDERNAME:I = 0x3500000e
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final TELCONTROLLER_NETWORKPROVIDER_SERVICEPROVIDERSTATE:I = 0x3500000d
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_OPERATIONSTATE_STATE:I = 0x35000027
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_OPERATIONSTATE_TEL:I = 0x35000028
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_RINGTONEMUTEONOFF_RINGTONEMUTEONOFF:I = 0x35000017
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final TELCONTROLLER_SIGNALQUALITY_QUALITY:I = 0x3500000f
    .annotation runtime Lmega/car/annotation/PropertyDefine;
        type = Ljava/lang/Integer;
    .end annotation
.end field
