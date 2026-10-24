.class public final enum Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/record/SubRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubRecordTypes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

.field public static final enum COMMON_OBJECT_DATA:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

.field public static final enum EMBEDDED_OBJECT_REF:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

.field public static final enum END:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

.field public static final enum FT_CBLS:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

.field public static final enum FT_CF:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

.field public static final enum FT_PIO_GRBIT:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

.field public static final enum GROUP_MARKER:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

.field public static final enum LBS_DATA:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

.field private static final LOOKUP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NOTE_STRUCTURE:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

.field public static final enum UNKNOWN:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;


# instance fields
.field public final recordConstructor:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor<",
            "*>;"
        }
    .end annotation
.end field

.field public final sid:S


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v1, Lorg/apache/poi/hssf/record/j3;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/poi/hssf/record/j3;-><init>(I)V

    const-string v3, "UNKNOWN"

    const/4 v4, -0x1

    invoke-direct {v0, v3, v2, v4, v1}, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;-><init>(Ljava/lang/String;IILorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;)V

    sput-object v0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->UNKNOWN:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v1, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v3, Lorg/apache/poi/hssf/record/p1;

    const/16 v4, 0x1a

    invoke-direct {v3, v4}, Lorg/apache/poi/hssf/record/p1;-><init>(I)V

    const-string v4, "END"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;-><init>(Ljava/lang/String;IILorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;)V

    sput-object v1, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->END:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v3, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v4, Lorg/apache/poi/hssf/record/o1;

    const/16 v6, 0x1c

    invoke-direct {v4, v6}, Lorg/apache/poi/hssf/record/o1;-><init>(I)V

    const-string v7, "GROUP_MARKER"

    const/4 v8, 0x2

    const/4 v9, 0x6

    invoke-direct {v3, v7, v8, v9, v4}, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;-><init>(Ljava/lang/String;IILorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;)V

    sput-object v3, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->GROUP_MARKER:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v4, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v7, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v7, v2}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    const-string v2, "FT_CF"

    const/4 v10, 0x3

    const/4 v11, 0x7

    invoke-direct {v4, v2, v10, v11, v7}, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;-><init>(Ljava/lang/String;IILorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;)V

    sput-object v4, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->FT_CF:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v7, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v2, Lorg/apache/poi/hssf/record/p1;

    const/16 v10, 0x1b

    invoke-direct {v2, v10}, Lorg/apache/poi/hssf/record/p1;-><init>(I)V

    const-string v10, "FT_PIO_GRBIT"

    const/4 v12, 0x4

    const/16 v13, 0x8

    invoke-direct {v7, v10, v12, v13, v2}, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;-><init>(Ljava/lang/String;IILorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;)V

    sput-object v7, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->FT_PIO_GRBIT:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v10, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v2, Lorg/apache/poi/hssf/record/o1;

    const/16 v14, 0x1d

    invoke-direct {v2, v14}, Lorg/apache/poi/hssf/record/o1;-><init>(I)V

    const-string v14, "EMBEDDED_OBJECT_REF"

    const/4 v15, 0x5

    const/16 v12, 0x9

    invoke-direct {v10, v14, v15, v12, v2}, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;-><init>(Ljava/lang/String;IILorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;)V

    sput-object v10, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->EMBEDDED_OBJECT_REF:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v14, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v2, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v2, v5}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    const-string v5, "FT_CBLS"

    const/16 v15, 0xc

    invoke-direct {v14, v5, v9, v15, v2}, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;-><init>(Ljava/lang/String;IILorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;)V

    sput-object v14, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->FT_CBLS:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v9, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v2, Lorg/apache/poi/hssf/record/p1;

    invoke-direct {v2, v6}, Lorg/apache/poi/hssf/record/p1;-><init>(I)V

    const-string v5, "NOTE_STRUCTURE"

    const/16 v6, 0xd

    invoke-direct {v9, v5, v11, v6, v2}, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;-><init>(Ljava/lang/String;IILorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;)V

    sput-object v9, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->NOTE_STRUCTURE:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v11, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v2, Landroidx/activity/result/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const-string v5, "LBS_DATA"

    const/16 v6, 0x13

    invoke-direct {v11, v5, v13, v6, v2}, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;-><init>(Ljava/lang/String;IILorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;)V

    sput-object v11, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->LBS_DATA:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v13, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    new-instance v2, Lorg/apache/poi/hssf/record/m1;

    invoke-direct {v2, v8}, Lorg/apache/poi/hssf/record/m1;-><init>(I)V

    const-string v5, "COMMON_OBJECT_DATA"

    const/16 v6, 0x15

    invoke-direct {v13, v5, v12, v6, v2}, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;-><init>(Ljava/lang/String;IILorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;)V

    sput-object v13, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->COMMON_OBJECT_DATA:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v7

    move-object v5, v10

    move-object v6, v14

    move-object v7, v9

    move-object v8, v11

    move-object v9, v13

    filled-new-array/range {v0 .. v9}, [Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->$VALUES:[Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    invoke-static {}, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->values()[Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/ddf/f0;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/apache/poi/ddf/f0;-><init>(I)V

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    sput-object v0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->LOOKUP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    int-to-short p1, p3

    iput-short p1, p0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->sid:S

    iput-object p4, p0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->recordConstructor:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes$RecordConstructor;

    return-void
.end method

.method public static forSID(I)Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;
    .locals 2

    sget-object v0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->LOOKUP:Ljava/util/Map;

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    sget-object v1, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->UNKNOWN:Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;
    .locals 1

    sget-object v0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->$VALUES:[Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    invoke-virtual {v0}, [Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;

    return-object v0
.end method


# virtual methods
.method public getSid()S
    .locals 0

    iget-short p0, p0, Lorg/apache/poi/hssf/record/SubRecord$SubRecordTypes;->sid:S

    return p0
.end method
