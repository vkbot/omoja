.class final enum Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/macros/VBAMacroReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecordType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum DIR_STREAM_TERMINATOR:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum EOF:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum MODULE_COOKIE:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum MODULE_DOC_STRING:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum MODULE_HELP_CONTEXT:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum MODULE_NAME:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum MODULE_NAME_UNICODE:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum MODULE_OFFSET:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum MODULE_PRIVATE:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum MODULE_STREAM_NAME:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum MODULE_TERMINATOR:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum MODULE_TYPE_OTHER:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum MODULE_TYPE_PROCEDURAL:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum PROJECT_CODEPAGE:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum PROJECT_CONSTANTS:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum PROJECT_COOKIE:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum PROJECT_DOC_STRING:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum PROJECT_HELP_CONTEXT:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum PROJECT_HELP_FILE_PATH:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum PROJECT_LCID:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum PROJECT_LCID_INVOKE:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum PROJECT_LIB_FLAGS:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum PROJECT_MODULES:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum PROJECT_NAME:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum PROJECT_SYS_KIND:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum PROJECT_VERSION:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum REFERENCE_CONTROL_A:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum REFERENCE_CONTROL_B:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum REFERENCE_NAME:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum REFERENCE_PROJECT:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum REFERENCE_REGISTERED:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

.field public static final enum UNKNOWN:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;


# instance fields
.field private final constantLength:I

.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 37

    new-instance v1, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object v0, v1

    const/4 v2, 0x0

    const/16 v3, 0x31

    const-string v4, "MODULE_OFFSET"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->MODULE_OFFSET:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v2, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object v1, v2

    const-string v3, "PROJECT_SYS_KIND"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->PROJECT_SYS_KIND:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v3, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object v2, v3

    const-string v4, "PROJECT_LCID"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5, v5}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->PROJECT_LCID:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v4, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object v3, v4

    const-string v5, "PROJECT_LCID_INVOKE"

    const/4 v6, 0x3

    const/16 v15, 0x14

    invoke-direct {v4, v5, v6, v15}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->PROJECT_LCID_INVOKE:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v5, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object v4, v5

    const-string v7, "PROJECT_CODEPAGE"

    const/4 v14, 0x4

    invoke-direct {v5, v7, v14, v6}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->PROJECT_CODEPAGE:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v6, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object v5, v6

    const-string v7, "PROJECT_NAME"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8, v14}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->PROJECT_NAME:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v7, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object v6, v7

    const-string v9, "PROJECT_DOC_STRING"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v8}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->PROJECT_DOC_STRING:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v8, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object v7, v8

    const-string v9, "PROJECT_HELP_FILE_PATH"

    const/4 v11, 0x7

    invoke-direct {v8, v9, v11, v10}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->PROJECT_HELP_FILE_PATH:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v9, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object v8, v9

    const-string v10, "PROJECT_HELP_CONTEXT"

    const/16 v12, 0x8

    invoke-direct {v9, v10, v12, v11, v12}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->PROJECT_HELP_CONTEXT:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v10, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object v9, v10

    const-string v11, "PROJECT_LIB_FLAGS"

    const/16 v13, 0x9

    invoke-direct {v10, v11, v13, v12}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->PROJECT_LIB_FLAGS:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v11, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object v10, v11

    const-string v12, "PROJECT_VERSION"

    const/16 v14, 0xa

    invoke-direct {v11, v12, v14, v13, v14}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->PROJECT_VERSION:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v12, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object v11, v12

    const-string v13, "PROJECT_CONSTANTS"

    const/16 v14, 0xb

    const/16 v15, 0xc

    invoke-direct {v12, v13, v14, v15}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->PROJECT_CONSTANTS:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v13, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object v12, v13

    const-string v14, "PROJECT_MODULES"

    move-object/from16 v32, v0

    const/16 v0, 0xf

    invoke-direct {v13, v14, v15, v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->PROJECT_MODULES:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v14, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object v13, v14

    const-string v15, "DIR_STREAM_TERMINATOR"

    const/16 v0, 0xd

    move-object/from16 v33, v1

    const/16 v1, 0x10

    invoke-direct {v14, v15, v0, v1}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->DIR_STREAM_TERMINATOR:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v15, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    const/4 v0, 0x4

    move-object v14, v15

    const-string v0, "PROJECT_COOKIE"

    const/16 v1, 0xe

    move-object/from16 v34, v2

    const/16 v2, 0x13

    invoke-direct {v15, v0, v1, v2}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->PROJECT_COOKIE:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    const/16 v1, 0x14

    move-object v15, v0

    const-string v1, "MODULE_NAME"

    const/16 v2, 0x19

    move-object/from16 v35, v3

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->MODULE_NAME:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v16, v0

    const-string v1, "MODULE_NAME_UNICODE"

    const/16 v3, 0x47

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->MODULE_NAME_UNICODE:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v17, v0

    const-string v1, "MODULE_STREAM_NAME"

    const/16 v2, 0x11

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->MODULE_STREAM_NAME:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v18, v0

    const-string v1, "MODULE_DOC_STRING"

    const/16 v2, 0x12

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->MODULE_DOC_STRING:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v19, v0

    const-string v1, "MODULE_HELP_CONTEXT"

    const/16 v2, 0x1e

    const/16 v3, 0x13

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->MODULE_HELP_CONTEXT:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v20, v0

    const-string v1, "MODULE_COOKIE"

    const/16 v3, 0x2c

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->MODULE_COOKIE:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const/16 v2, 0x21

    const-string v3, "MODULE_TYPE_PROCEDURAL"

    move-object/from16 v36, v4

    const/4 v4, 0x4

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->MODULE_TYPE_PROCEDURAL:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v22, v0

    const/16 v1, 0x22

    const-string v2, "MODULE_TYPE_OTHER"

    const/16 v3, 0x16

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->MODULE_TYPE_OTHER:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const/16 v2, 0x28

    const-string v3, "MODULE_PRIVATE"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->MODULE_PRIVATE:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v24, v0

    const-string v1, "REFERENCE_NAME"

    const/16 v2, 0x18

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->REFERENCE_NAME:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v25, v0

    const-string v1, "REFERENCE_REGISTERED"

    const/16 v2, 0xd

    const/16 v3, 0x19

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->REFERENCE_REGISTERED:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v26, v0

    const-string v1, "REFERENCE_PROJECT"

    const/16 v2, 0xe

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->REFERENCE_PROJECT:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v27, v0

    const/16 v1, 0x1b

    const/16 v2, 0x2f

    const-string v3, "REFERENCE_CONTROL_A"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->REFERENCE_CONTROL_A:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v28, v0

    const-string v1, "REFERENCE_CONTROL_B"

    const/16 v2, 0x33

    const/16 v3, 0x1c

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->REFERENCE_CONTROL_B:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v29, v0

    const/16 v1, 0x1d

    const/16 v2, 0x2b

    const-string v3, "MODULE_TERMINATOR"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->MODULE_TERMINATOR:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v30, v0

    const-string v1, "EOF"

    const/4 v2, -0x1

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->EOF:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v31, v0

    const/16 v1, 0x1f

    const/4 v2, -0x2

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->UNKNOWN:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v36

    filled-new-array/range {v0 .. v31}, [Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->$VALUES:[Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->id:I

    const/4 p1, -0x1

    iput p1, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->constantLength:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->id:I

    iput p4, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->constantLength:I

    return-void
.end method

.method public static synthetic access$200(Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;)I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->id:I

    return p0
.end method

.method public static lookup(I)Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;
    .locals 5

    invoke-static {}, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->values()[Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->id:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->UNKNOWN:Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;
    .locals 1

    const-class v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;
    .locals 1

    sget-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->$VALUES:[Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    invoke-virtual {v0}, [Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;

    return-object v0
.end method


# virtual methods
.method public getConstantLength()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$RecordType;->constantLength:I

    return p0
.end method
