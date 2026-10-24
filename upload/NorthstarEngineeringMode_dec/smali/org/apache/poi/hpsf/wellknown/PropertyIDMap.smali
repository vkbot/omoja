.class public Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final PID_APPNAME:I = 0x12

.field public static final PID_AUTHOR:I = 0x4

.field public static final PID_BEHAVIOUR:I = -0x7ffffffd

.field public static final PID_BYTECOUNT:I = 0x4

.field public static final PID_CATEGORY:I = 0x2

.field public static final PID_CCHWITHSPACES:I = 0x11

.field public static final PID_CHARCOUNT:I = 0x10

.field public static final PID_CODEPAGE:I = 0x1

.field public static final PID_COMMENTS:I = 0x6

.field public static final PID_COMPANY:I = 0xf

.field public static final PID_CONTENTSTATUS:I = 0x1b

.field public static final PID_CONTENTTYPE:I = 0x1a

.field public static final PID_CREATE_DTM:I = 0xc

.field public static final PID_DICTIONARY:I = 0x0

.field public static final PID_DIGSIG:I = 0x18

.field public static final PID_DOCPARTS:I = 0xd

.field public static final PID_DOCVERSION:I = 0x1d

.field public static final PID_EDITTIME:I = 0xa

.field public static final PID_HEADINGPAIR:I = 0xc

.field public static final PID_HIDDENCOUNT:I = 0x9

.field public static final PID_HYPERLINKSCHANGED:I = 0x16

.field public static final PID_KEYWORDS:I = 0x5

.field public static final PID_LANGUAGE:I = 0x1c

.field public static final PID_LASTAUTHOR:I = 0x8

.field public static final PID_LASTPRINTED:I = 0xb

.field public static final PID_LASTSAVE_DTM:I = 0xd

.field public static final PID_LINECOUNT:I = 0x5

.field public static final PID_LINKSDIRTY:I = 0x10

.field public static final PID_LOCALE:I = -0x80000000

.field public static final PID_MANAGER:I = 0xe

.field public static final PID_MAX:I = 0x1f

.field public static final PID_MMCLIPCOUNT:I = 0xa

.field public static final PID_NOTECOUNT:I = 0x8

.field public static final PID_PAGECOUNT:I = 0xe

.field public static final PID_PARCOUNT:I = 0x6

.field public static final PID_PRESFORMAT:I = 0x3

.field public static final PID_REVNUMBER:I = 0x9

.field public static final PID_SCALE:I = 0xb

.field public static final PID_SECURITY:I = 0x13

.field public static final PID_SLIDECOUNT:I = 0x7

.field public static final PID_SUBJECT:I = 0x3

.field public static final PID_TEMPLATE:I = 0x7

.field public static final PID_THUMBNAIL:I = 0x11

.field public static final PID_TITLE:I = 0x2

.field public static final PID_VERSION:I = 0x17

.field public static final PID_WORDCOUNT:I = 0xf

.field public static final UNDEFINED:Ljava/lang/String; = "[undefined]"

.field private static final documentSummaryInformationIdValues:[[Ljava/lang/Object;

.field private static documentSummaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

.field private static final fallbackIdValues:[[Ljava/lang/Object;

.field private static fallbackProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

.field private static final summaryInformationIdValues:[[Ljava/lang/Object;

.field private static summaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;


# instance fields
.field private final idMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const/16 v0, 0x12

    new-array v0, v0, [[Ljava/lang/Object;

    const-wide/16 v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PID_TITLE"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "PID_SUBJECT"

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v0, v5

    const-wide/16 v6, 0x4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "PID_AUTHOR"

    filled-new-array {v4, v6}, [Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v0, v7

    const-wide/16 v8, 0x5

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "PID_KEYWORDS"

    filled-new-array {v6, v8}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v0, v9

    const-wide/16 v10, 0x6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v10, "PID_COMMENTS"

    filled-new-array {v8, v10}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x4

    aput-object v10, v0, v11

    const-wide/16 v12, 0x7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v12, "PID_TEMPLATE"

    filled-new-array {v10, v12}, [Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x5

    aput-object v12, v0, v13

    const-wide/16 v14, 0x8

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v14, "PID_LASTAUTHOR"

    filled-new-array {v12, v14}, [Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x6

    aput-object v14, v0, v15

    const-wide/16 v16, 0x9

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const-string v15, "PID_REVNUMBER"

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v15

    const/16 v17, 0x7

    aput-object v15, v0, v17

    const-wide/16 v18, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v13, "PID_EDITTIME"

    filled-new-array {v15, v13}, [Ljava/lang/Object;

    move-result-object v13

    const/16 v19, 0x8

    aput-object v13, v0, v19

    const-wide/16 v20, 0xb

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v11, "PID_LASTPRINTED"

    filled-new-array {v13, v11}, [Ljava/lang/Object;

    move-result-object v11

    const/16 v21, 0x9

    aput-object v11, v0, v21

    const-wide/16 v22, 0xc

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v9, "PID_CREATE_DTM"

    filled-new-array {v11, v9}, [Ljava/lang/Object;

    move-result-object v9

    const/16 v23, 0xa

    aput-object v9, v0, v23

    const-wide/16 v24, 0xd

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-string v7, "PID_LASTSAVE_DTM"

    filled-new-array {v9, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v9, 0xb

    aput-object v7, v0, v9

    const-wide/16 v25, 0xe

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "PID_PAGECOUNT"

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v9, 0xc

    aput-object v7, v0, v9

    const-wide/16 v25, 0xf

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "PID_WORDCOUNT"

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v9, 0xd

    aput-object v7, v0, v9

    const-wide/16 v25, 0x10

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "PID_CHARCOUNT"

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v9, 0xe

    aput-object v7, v0, v9

    const-wide/16 v25, 0x11

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "PID_THUMBNAIL"

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v9, 0xf

    aput-object v7, v0, v9

    const-wide/16 v25, 0x12

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "PID_APPNAME"

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v9, 0x10

    aput-object v7, v0, v9

    const-wide/16 v25, 0x13

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "PID_SECURITY"

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v9, 0x11

    aput-object v7, v0, v9

    sput-object v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->summaryInformationIdValues:[[Ljava/lang/Object;

    const/16 v0, 0x11

    new-array v0, v0, [[Ljava/lang/Object;

    const-wide/16 v25, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "PID_DICTIONARY"

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v0, v3

    const-wide/16 v25, 0x1

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "PID_CODEPAGE"

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v0, v5

    const-string v7, "PID_CATEGORY"

    filled-new-array {v1, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v9, 0x2

    aput-object v7, v0, v9

    const-string v7, "PID_PRESFORMAT"

    filled-new-array {v2, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v9, 0x3

    aput-object v7, v0, v9

    const-string v7, "PID_BYTECOUNT"

    filled-new-array {v4, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v9, 0x4

    aput-object v7, v0, v9

    const-string v7, "PID_LINECOUNT"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v9, 0x5

    aput-object v7, v0, v9

    const-string v7, "PID_PARCOUNT"

    filled-new-array {v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v9, 0x6

    aput-object v7, v0, v9

    const-string v7, "PID_SLIDECOUNT"

    filled-new-array {v10, v7}, [Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v0, v17

    const-string v7, "PID_NOTECOUNT"

    filled-new-array {v12, v7}, [Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v0, v19

    const-string v7, "PID_HIDDENCOUNT"

    filled-new-array {v14, v7}, [Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v0, v21

    const-string v7, "PID_MMCLIPCOUNT"

    filled-new-array {v15, v7}, [Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v0, v23

    const-string v7, "PID_SCALE"

    filled-new-array {v13, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v9, 0xb

    aput-object v7, v0, v9

    const-string v7, "PID_HEADINGPAIR"

    filled-new-array {v11, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v9, 0xc

    aput-object v7, v0, v9

    const-wide/16 v25, 0xd

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "PID_DOCPARTS"

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v9, 0xd

    aput-object v7, v0, v9

    const-wide/16 v25, 0xe

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "PID_MANAGER"

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v9, 0xe

    aput-object v7, v0, v9

    const-wide/16 v25, 0xf

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "PID_COMPANY"

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v9, 0xf

    aput-object v7, v0, v9

    const-wide/16 v25, 0x10

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "PID_LINKSDIRTY"

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v9, 0x10

    aput-object v7, v0, v9

    sput-object v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->documentSummaryInformationIdValues:[[Ljava/lang/Object;

    const/16 v0, 0x1c

    new-array v0, v0, [[Ljava/lang/Object;

    const-wide/16 v25, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v9, "PID_DICTIONARY"

    filled-new-array {v7, v9}, [Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v0, v3

    const-wide/16 v25, 0x1

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v7, "PID_CODEPAGE"

    filled-new-array {v3, v7}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v5

    const-string v3, "PID_CATEGORY"

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string v1, "PID_PRESFORMAT"

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "PID_BYTECOUNT"

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "PID_LINECOUNT"

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "PID_PARCOUNT"

    filled-new-array {v8, v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "PID_SLIDECOUNT"

    filled-new-array {v10, v1}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v17

    const-string v1, "PID_NOTECOUNT"

    filled-new-array {v12, v1}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v19

    const-string v1, "PID_HIDDENCOUNT"

    filled-new-array {v14, v1}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v21

    const-string v1, "PID_MMCLIPCOUNT"

    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v0, v23

    const-string v1, "PID_SCALE"

    filled-new-array {v13, v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "PID_HEADINGPAIR"

    filled-new-array {v11, v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-wide/16 v1, 0xd

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PID_DOCPARTS"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-wide/16 v1, 0xe

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PID_MANAGER"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-wide/16 v1, 0xf

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PID_COMPANY"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-wide/16 v1, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PID_LINKSDIRTY"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-wide/16 v1, 0x11

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PID_CCHWITHSPACES"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-wide/16 v1, 0x16

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PID_HYPERLINKSCHANGED"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-wide/16 v1, 0x17

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PID_VERSION"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-wide/16 v1, 0x18

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PID_DIGSIG"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-wide/16 v1, 0x1a

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PID_CONTENTTYPE"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-wide/16 v1, 0x1b

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PID_CONTENTSTATUS"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-wide/16 v1, 0x1c

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PID_LANGUAGE"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-wide/16 v1, 0x1d

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PID_DOCVERSION"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-wide/16 v1, 0x1f

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PID_MAX"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-wide/32 v1, -0x80000000

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PID_LOCALE"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-wide/32 v1, -0x7ffffffd

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "PID_BEHAVIOUR"

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->fallbackIdValues:[[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>([[Ljava/lang/Object;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    aget-object v5, v4, v2

    check-cast v5, Ljava/lang/Long;

    const/4 v6, 0x1

    aget-object v4, v4, v6

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized getDocumentSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 3

    const-class v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->documentSummaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    sget-object v2, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->documentSummaryInformationIdValues:[[Ljava/lang/Object;

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;-><init>([[Ljava/lang/Object;)V

    sput-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->documentSummaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->documentSummaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getFallbackProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 3

    const-class v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->fallbackProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    sget-object v2, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->fallbackIdValues:[[Ljava/lang/Object;

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;-><init>([[Ljava/lang/Object;)V

    sput-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->fallbackProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->fallbackProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    .locals 3

    const-class v0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->summaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    if-nez v1, :cond_0

    new-instance v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    sget-object v2, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->summaryInformationIdValues:[[Ljava/lang/Object;

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;-><init>([[Ljava/lang/Object;)V

    sput-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->summaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->summaryInformationProperties:Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object p0

    invoke-static {}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->getDocumentSummaryInformationProperties()Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s2: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->get(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->put(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    .line 2
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->remove(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    return p0
.end method

.method public values()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hpsf/wellknown/PropertyIDMap;->idMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
