.class public final Lorg/apache/commons/net/ftp/FTPCommand;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ABOR:I = 0x15

.field public static final ABORT:I = 0x15

.field public static final ACCOUNT:I = 0x2

.field public static final ACCT:I = 0x2

.field public static final ALLO:I = 0x11

.field public static final ALLOCATE:I = 0x11

.field public static final APPE:I = 0x10

.field public static final APPEND:I = 0x10

.field public static final CDUP:I = 0x4

.field public static final CHANGE_TO_PARENT_DIRECTORY:I = 0x4

.field public static final CHANGE_WORKING_DIRECTORY:I = 0x3

.field private static final COMMANDS:[Ljava/lang/String;

.field public static final CWD:I = 0x3

.field public static final DATA_PORT:I = 0x8

.field public static final DELE:I = 0x16

.field public static final DELETE:I = 0x16

.field public static final EPRT:I = 0x25

.field public static final EPSV:I = 0x24

.field public static final FEAT:I = 0x22

.field public static final FEATURES:I = 0x22

.field public static final FILE_STRUCTURE:I = 0xb

.field public static final GET_MOD_TIME:I = 0x21

.field public static final HELP:I = 0x1f

.field private static final LAST:I = 0x27

.field public static final LIST:I = 0x1a

.field public static final LOGOUT:I = 0x7

.field public static final MAKE_DIRECTORY:I = 0x18

.field public static final MDTM:I = 0x21

.field public static final MFMT:I = 0x23

.field public static final MKD:I = 0x18

.field public static final MLSD:I = 0x26

.field public static final MLST:I = 0x27

.field public static final MODE:I = 0xc

.field public static final MOD_TIME:I = 0x21

.field public static final NAME_LIST:I = 0x1b

.field public static final NLST:I = 0x1b

.field public static final NOOP:I = 0x20

.field public static final PASS:I = 0x1

.field public static final PASSIVE:I = 0x9

.field public static final PASSWORD:I = 0x1

.field public static final PASV:I = 0x9

.field public static final PORT:I = 0x8

.field public static final PRINT_WORKING_DIRECTORY:I = 0x19

.field public static final PWD:I = 0x19

.field public static final QUIT:I = 0x7

.field public static final REIN:I = 0x6

.field public static final REINITIALIZE:I = 0x6

.field public static final REMOVE_DIRECTORY:I = 0x17

.field public static final RENAME_FROM:I = 0x13

.field public static final RENAME_TO:I = 0x14

.field public static final REPRESENTATION_TYPE:I = 0xa

.field public static final REST:I = 0x12

.field public static final RESTART:I = 0x12

.field public static final RETR:I = 0xd

.field public static final RETRIEVE:I = 0xd

.field public static final RMD:I = 0x17

.field public static final RNFR:I = 0x13

.field public static final RNTO:I = 0x14

.field public static final SET_MOD_TIME:I = 0x23

.field public static final SITE:I = 0x1c

.field public static final SITE_PARAMETERS:I = 0x1c

.field public static final SMNT:I = 0x5

.field public static final STAT:I = 0x1e

.field public static final STATUS:I = 0x1e

.field public static final STOR:I = 0xe

.field public static final STORE:I = 0xe

.field public static final STORE_UNIQUE:I = 0xf

.field public static final STOU:I = 0xf

.field public static final STRU:I = 0xb

.field public static final STRUCTURE_MOUNT:I = 0x5

.field public static final SYST:I = 0x1d

.field public static final SYSTEM:I = 0x1d

.field public static final TRANSFER_MODE:I = 0xc

.field public static final TYPE:I = 0xa

.field public static final USER:I

.field public static final USERNAME:I


# direct methods
.method static constructor <clinit>()V
    .locals 41

    .line 1
    const-string v39, "MLSD"

    .line 2
    .line 3
    const-string v40, "MLST"

    .line 4
    .line 5
    const-string v1, "USER"

    .line 6
    .line 7
    const-string v2, "PASS"

    .line 8
    .line 9
    const-string v3, "ACCT"

    .line 10
    .line 11
    const-string v4, "CWD"

    .line 12
    .line 13
    const-string v5, "CDUP"

    .line 14
    .line 15
    const-string v6, "SMNT"

    .line 16
    .line 17
    const-string v7, "REIN"

    .line 18
    .line 19
    const-string v8, "QUIT"

    .line 20
    .line 21
    const-string v9, "PORT"

    .line 22
    .line 23
    const-string v10, "PASV"

    .line 24
    .line 25
    const-string v11, "TYPE"

    .line 26
    .line 27
    const-string v12, "STRU"

    .line 28
    .line 29
    const-string v13, "MODE"

    .line 30
    .line 31
    const-string v14, "RETR"

    .line 32
    .line 33
    const-string v15, "STOR"

    .line 34
    .line 35
    const-string v16, "STOU"

    .line 36
    .line 37
    const-string v17, "APPE"

    .line 38
    .line 39
    const-string v18, "ALLO"

    .line 40
    .line 41
    const-string v19, "REST"

    .line 42
    .line 43
    const-string v20, "RNFR"

    .line 44
    .line 45
    const-string v21, "RNTO"

    .line 46
    .line 47
    const-string v22, "ABOR"

    .line 48
    .line 49
    const-string v23, "DELE"

    .line 50
    .line 51
    const-string v24, "RMD"

    .line 52
    .line 53
    const-string v25, "MKD"

    .line 54
    .line 55
    const-string v26, "PWD"

    .line 56
    .line 57
    const-string v27, "LIST"

    .line 58
    .line 59
    const-string v28, "NLST"

    .line 60
    .line 61
    const-string v29, "SITE"

    .line 62
    .line 63
    const-string v30, "SYST"

    .line 64
    .line 65
    const-string v31, "STAT"

    .line 66
    .line 67
    const-string v32, "HELP"

    .line 68
    .line 69
    const-string v33, "NOOP"

    .line 70
    .line 71
    const-string v34, "MDTM"

    .line 72
    .line 73
    const-string v35, "FEAT"

    .line 74
    .line 75
    const-string v36, "MFMT"

    .line 76
    .line 77
    const-string v37, "EPSV"

    .line 78
    .line 79
    const-string v38, "EPRT"

    .line 80
    .line 81
    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, Lorg/apache/commons/net/ftp/FTPCommand;->COMMANDS:[Ljava/lang/String;

    .line 86
    .line 87
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static checkArray()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCommand;->COMMANDS:[Ljava/lang/String;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/16 v2, 0x28

    .line 5
    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const-string v1, "Incorrect COMMANDS array. Should have length 40 found "

    .line 10
    .line 11
    array-length v0, v0

    .line 12
    invoke-static {v0, v1}, Lai/onnxruntime/b;->b(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static getCommand(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/net/ftp/FTPCommand;->COMMANDS:[Ljava/lang/String;

    .line 2
    .line 3
    aget-object p0, v0, p0

    .line 4
    .line 5
    return-object p0
.end method
