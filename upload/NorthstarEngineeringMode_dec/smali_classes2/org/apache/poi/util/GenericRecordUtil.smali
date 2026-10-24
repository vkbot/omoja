.class public final Lorg/apache/poi/util/GenericRecordUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;
    }
.end annotation

.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/util/GenericRecordUtil;->lambda$getEnumBitsAsString$3(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/util/GenericRecordUtil;->lambda$getBitsAsString$1(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(I[Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/util/GenericRecordUtil;->lambda$safeEnum$0(I[Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/poi/util/GenericRecordUtil;->lambda$getBitsAsString$2(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    move-result-object p0

    return-object p0
.end method

.method public static getBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Number;",
            ">;[I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Supplier<",
            "Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/poi/util/i;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/poi/util/i;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;I)V

    return-object v0
.end method

.method public static getBitsAsString(Ljava/util/function/Supplier;[Lorg/apache/poi/util/BitField;[Ljava/lang/String;)Ljava/util/function/Supplier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Number;",
            ">;[",
            "Lorg/apache/poi/util/BitField;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Supplier<",
            "Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/apache/poi/util/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/poi/util/h;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    .line 2
    new-instance v0, Lorg/apache/poi/util/i;

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/poi/util/i;-><init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/io/Serializable;I)V

    return-object v0
.end method

.method public static getEnumBitsAsString(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Number;",
            ">;[I[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Supplier<",
            "Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/util/k;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/poi/util/k;-><init>(Ljava/util/function/Supplier;[I[Ljava/lang/String;)V

    return-object v0
.end method

.method public static getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 2
    invoke-static/range {v0 .. v17}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 3
    invoke-static/range {v0 .. v17}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 4
    invoke-static/range {v0 .. v17}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 5
    invoke-static/range {v0 .. v17}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 6
    invoke-static/range {v0 .. v17}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 7
    invoke-static/range {v0 .. v17}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 8
    invoke-static/range {v0 .. v17}, Lorg/apache/poi/util/GenericRecordUtil;->getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getGenericProperties(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Supplier<",
            "*>;>;"
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v6, p10

    move-object/from16 v7, p12

    move-object/from16 v8, p14

    move-object/from16 v9, p16

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    new-array v3, v2, [Ljava/util/function/Supplier;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    aput-object p3, v3, v5

    const/4 v5, 0x2

    aput-object p5, v3, v5

    const/4 v5, 0x3

    aput-object p7, v3, v5

    const/4 v5, 0x4

    aput-object p9, v3, v5

    const/4 v5, 0x5

    aput-object p11, v3, v5

    const/4 v5, 0x6

    aput-object p13, v3, v5

    const/4 v5, 0x7

    aput-object p15, v3, v5

    const/16 v5, 0x8

    aput-object p17, v3, v5

    :goto_0
    if-ge v4, v2, :cond_1

    .line 10
    aget-object v5, v1, v4

    if-eqz v5, :cond_1

    const-string v6, "base"

    .line 11
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 12
    aget-object v5, v3, v4

    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    .line 13
    check-cast v5, Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 14
    :cond_0
    aget-object v5, v1, v4

    aget-object v6, v3, v4

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$getBitsAsString$1(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;
    .locals 2

    new-instance v0, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;-><init>(Ljava/util/function/Supplier;[I[Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static synthetic lambda$getBitsAsString$2(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;
    .locals 2

    new-instance v0, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;-><init>(Ljava/util/function/Supplier;[I[Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static synthetic lambda$getEnumBitsAsString$3(Ljava/util/function/Supplier;[I[Ljava/lang/String;)Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;
    .locals 2

    new-instance v0, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/apache/poi/util/GenericRecordUtil$AnnotatedFlag;-><init>(Ljava/util/function/Supplier;[I[Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static synthetic lambda$safeEnum$0(I[Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/lang/Enum;
    .locals 1

    if-ltz p0, :cond_0

    array-length v0, p1

    if-ge p0, v0, :cond_0

    aget-object p2, p1, p0

    :cond_0
    return-object p2
.end method

.method public static safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;)Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>([TT;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Number;",
            ">;)",
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lorg/apache/poi/util/GenericRecordUtil;->safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;Ljava/lang/Enum;)Ljava/util/function/Supplier;

    move-result-object p0

    return-object p0
.end method

.method public static safeEnum([Ljava/lang/Enum;Ljava/util/function/Supplier;Ljava/lang/Enum;)Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "*>;>([TT;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Number;",
            ">;TT;)",
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 3
    new-instance v0, Lorg/apache/poi/util/j;

    invoke-direct {v0, p1, p0, p2}, Lorg/apache/poi/util/j;-><init>(I[Ljava/lang/Enum;Ljava/lang/Enum;)V

    return-object v0
.end method
