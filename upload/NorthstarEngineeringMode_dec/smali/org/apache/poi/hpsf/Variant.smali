.class public Lorg/apache/poi/hpsf/Variant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LENGTH_0:Ljava/lang/Integer;

.field public static final LENGTH_2:Ljava/lang/Integer;

.field public static final LENGTH_4:Ljava/lang/Integer;

.field public static final LENGTH_8:Ljava/lang/Integer;

.field public static final LENGTH_UNKNOWN:Ljava/lang/Integer;

.field public static final LENGTH_VARIABLE:Ljava/lang/Integer;

.field private static final NUMBER_TO_NAME_LIST:[[Ljava/lang/Object;

.field public static final VT_ARRAY:I = 0x2000

.field public static final VT_BLOB:I = 0x41

.field public static final VT_BLOB_OBJECT:I = 0x46

.field public static final VT_BOOL:I = 0xb

.field public static final VT_BSTR:I = 0x8

.field public static final VT_BYREF:I = 0x4000

.field public static final VT_CARRAY:I = 0x1c

.field public static final VT_CF:I = 0x47

.field public static final VT_CLSID:I = 0x48

.field public static final VT_CY:I = 0x6

.field public static final VT_DATE:I = 0x7

.field public static final VT_DECIMAL:I = 0xe

.field public static final VT_DISPATCH:I = 0x9

.field public static final VT_EMPTY:I = 0x0

.field public static final VT_ERROR:I = 0xa

.field public static final VT_FILETIME:I = 0x40

.field public static final VT_HRESULT:I = 0x19

.field public static final VT_I1:I = 0x10

.field public static final VT_I2:I = 0x2

.field public static final VT_I4:I = 0x3

.field public static final VT_I8:I = 0x14

.field public static final VT_ILLEGAL:I = 0xffff

.field public static final VT_ILLEGALMASKED:I = 0xfff

.field public static final VT_INT:I = 0x16

.field public static final VT_LPSTR:I = 0x1e

.field public static final VT_LPWSTR:I = 0x1f

.field public static final VT_NULL:I = 0x1

.field public static final VT_PTR:I = 0x1a

.field public static final VT_R4:I = 0x4

.field public static final VT_R8:I = 0x5

.field public static final VT_RESERVED:I = 0x8000

.field public static final VT_SAFEARRAY:I = 0x1b

.field public static final VT_STORAGE:I = 0x43

.field public static final VT_STORED_OBJECT:I = 0x45

.field public static final VT_STREAM:I = 0x42

.field public static final VT_STREAMED_OBJECT:I = 0x44

.field public static final VT_TYPEMASK:I = 0xfff

.field public static final VT_UI1:I = 0x11

.field public static final VT_UI2:I = 0x12

.field public static final VT_UI4:I = 0x13

.field public static final VT_UI8:I = 0x15

.field public static final VT_UINT:I = 0x17

.field public static final VT_UNKNOWN:I = 0xd

.field public static final VT_USERDEFINED:I = 0x1d

.field public static final VT_VARIANT:I = 0xc

.field public static final VT_VECTOR:I = 0x1000

.field public static final VT_VERSIONED_STREAM:I = 0x49

.field public static final VT_VOID:I = 0x18

.field private static final numberToLength:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final numberToName:Ljava/util/Map;
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
    .locals 14

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/Variant;->LENGTH_UNKNOWN:Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lorg/apache/poi/hpsf/Variant;->LENGTH_VARIABLE:Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lorg/apache/poi/hpsf/Variant;->LENGTH_0:Ljava/lang/Integer;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sput-object v5, Lorg/apache/poi/hpsf/Variant;->LENGTH_2:Ljava/lang/Integer;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lorg/apache/poi/hpsf/Variant;->LENGTH_4:Ljava/lang/Integer;

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sput-object v9, Lorg/apache/poi/hpsf/Variant;->LENGTH_8:Ljava/lang/Integer;

    const/16 v10, 0x28

    new-array v10, v10, [[Ljava/lang/Object;

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "VT_EMPTY"

    filled-new-array {v11, v12, v3}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v10, v2

    const-wide/16 v11, 0x1

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v11, "VT_NULL"

    filled-new-array {v3, v11, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v11, 0x1

    aput-object v3, v10, v11

    const-wide/16 v12, 0x2

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v12, "VT_I2"

    filled-new-array {v3, v12, v5}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v10, v4

    const-wide/16 v12, 0x3

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_I4"

    filled-new-array {v3, v5, v7}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x3

    aput-object v3, v10, v5

    const-wide/16 v12, 0x4

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_R4"

    filled-new-array {v3, v5, v7}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v10, v6

    const-wide/16 v5, 0x5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_R8"

    filled-new-array {v3, v5, v9}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x5

    aput-object v3, v10, v5

    const-wide/16 v5, 0x6

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_CY"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x6

    aput-object v3, v10, v5

    const-wide/16 v5, 0x7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_DATE"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/4 v5, 0x7

    aput-object v3, v10, v5

    const-wide/16 v5, 0x8

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_BSTR"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v10, v8

    const-wide/16 v5, 0x9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_DISPATCH"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x9

    aput-object v3, v10, v5

    const-wide/16 v5, 0xa

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_ERROR"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0xa

    aput-object v3, v10, v5

    const-wide/16 v5, 0xb

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_BOOL"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0xb

    aput-object v3, v10, v5

    const-wide/16 v5, 0xc

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_VARIANT"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0xc

    aput-object v3, v10, v5

    const-wide/16 v5, 0xd

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_UNKNOWN"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0xd

    aput-object v3, v10, v5

    const-wide/16 v5, 0xe

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_DECIMAL"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0xe

    aput-object v3, v10, v5

    const-wide/16 v5, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_I1"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0xf

    aput-object v3, v10, v5

    const-wide/16 v5, 0x11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_UI1"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x10

    aput-object v3, v10, v5

    const-wide/16 v5, 0x12

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_UI2"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x11

    aput-object v3, v10, v5

    const-wide/16 v5, 0x13

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_UI4"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x12

    aput-object v3, v10, v5

    const-wide/16 v5, 0x14

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_I8"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x13

    aput-object v3, v10, v5

    const-wide/16 v5, 0x15

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_UI8"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x14

    aput-object v3, v10, v5

    const-wide/16 v5, 0x16

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_INT"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x15

    aput-object v3, v10, v5

    const-wide/16 v5, 0x17

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_UINT"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x16

    aput-object v3, v10, v5

    const-wide/16 v5, 0x18

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_VOID"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x17

    aput-object v3, v10, v5

    const-wide/16 v5, 0x19

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_HRESULT"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x18

    aput-object v3, v10, v5

    const-wide/16 v5, 0x1a

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_PTR"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x19

    aput-object v3, v10, v5

    const-wide/16 v5, 0x1b

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_SAFEARRAY"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x1a

    aput-object v3, v10, v5

    const-wide/16 v5, 0x1c

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_CARRAY"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x1b

    aput-object v3, v10, v5

    const-wide/16 v5, 0x1d

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_USERDEFINED"

    filled-new-array {v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v5, 0x1c

    aput-object v3, v10, v5

    const-wide/16 v5, 0x1e

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v5, "VT_LPSTR"

    filled-new-array {v3, v5, v1}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1d

    aput-object v1, v10, v3

    const-wide/16 v5, 0x1f

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "VT_LPWSTR"

    filled-new-array {v1, v3, v0}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1e

    aput-object v1, v10, v3

    const-wide/16 v5, 0x40

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "VT_FILETIME"

    filled-new-array {v1, v3, v9}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x1f

    aput-object v1, v10, v3

    const-wide/16 v5, 0x41

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "VT_BLOB"

    filled-new-array {v1, v3, v0}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x20

    aput-object v1, v10, v3

    const-wide/16 v5, 0x42

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "VT_STREAM"

    filled-new-array {v1, v3, v0}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x21

    aput-object v1, v10, v3

    const-wide/16 v5, 0x43

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "VT_STORAGE"

    filled-new-array {v1, v3, v0}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x22

    aput-object v1, v10, v3

    const-wide/16 v5, 0x44

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "VT_STREAMED_OBJECT"

    filled-new-array {v1, v3, v0}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x23

    aput-object v1, v10, v3

    const-wide/16 v5, 0x45

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "VT_STORED_OBJECT"

    filled-new-array {v1, v3, v0}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x24

    aput-object v1, v10, v3

    const-wide/16 v5, 0x46

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "VT_BLOB_OBJECT"

    filled-new-array {v1, v3, v0}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x25

    aput-object v1, v10, v3

    const-wide/16 v5, 0x47

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "VT_CF"

    filled-new-array {v1, v3, v0}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v3, 0x26

    aput-object v1, v10, v3

    const-wide/16 v5, 0x48

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "VT_CLSID"

    filled-new-array {v1, v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0x27

    aput-object v0, v10, v1

    sput-object v10, Lorg/apache/poi/hpsf/Variant;->NUMBER_TO_NAME_LIST:[[Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    array-length v1, v10

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v3}, Ljava/util/HashMap;-><init>(IF)V

    new-instance v1, Ljava/util/HashMap;

    array-length v5, v10

    invoke-direct {v1, v5, v3}, Ljava/util/HashMap;-><init>(IF)V

    array-length v3, v10

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v10, v5

    aget-object v7, v6, v2

    check-cast v7, Ljava/lang/Long;

    aget-object v8, v6, v11

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v7, v6, v2

    check-cast v7, Ljava/lang/Long;

    aget-object v6, v6, v4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/Variant;->numberToName:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/Variant;->numberToLength:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVariantLength(J)I
    .locals 1

    sget-object v0, Lorg/apache/poi/hpsf/Variant;->numberToLength:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/hpsf/Variant;->LENGTH_UNKNOWN:Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getVariantName(J)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x1000

    and-long v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    sub-long/2addr p0, v0

    const-string v0, "Vector of "

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x2000

    and-long v2, p0, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    sub-long/2addr p0, v0

    const-string v0, "Array of "

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x4000

    and-long v2, p0, v0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    sub-long/2addr p0, v0

    const-string v0, "ByRef of "

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroidx/activity/result/a;->g(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/hpsf/Variant;->numberToName:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "unknown variant type"

    :goto_1
    return-object p0
.end method
