.class public final enum Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GREY_3_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GREY_4_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GREY_5_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYRB_4_TRAFFIC_LIGHTS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYR_3_ARROW:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYR_3_FLAGS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYR_3_SHAPES:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYR_3_SYMBOLS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYR_3_SYMBOLS_CIRCLE:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYR_3_TRAFFIC_LIGHTS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYR_3_TRAFFIC_LIGHTS_BOX:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYR_4_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum GYYYR_5_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum QUARTERS_5:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum RATINGS_4:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum RATINGS_5:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

.field public static final enum RB_4_TRAFFIC_LIGHTS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;


# instance fields
.field public final id:I

.field public final name:Ljava/lang/String;

.field public final num:I


# direct methods
.method static constructor <clinit>()V
    .locals 38

    new-instance v7, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object v6, v7

    const-string v1, "GYR_3_ARROW"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v5, "3Arrows"

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v7, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_ARROW:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object v7, v0

    const-string v9, "GREY_3_ARROWS"

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x3

    const-string v13, "3ArrowsGray"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GREY_3_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object v8, v0

    const-string v15, "GYR_3_FLAGS"

    const/16 v16, 0x2

    const/16 v17, 0x2

    const/16 v18, 0x3

    const-string v19, "3Flags"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_FLAGS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object v9, v0

    const-string v21, "GYR_3_TRAFFIC_LIGHTS"

    const/16 v22, 0x3

    const/16 v23, 0x3

    const/16 v24, 0x3

    const-string v25, "3TrafficLights1"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_TRAFFIC_LIGHTS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object v10, v0

    const-string v12, "GYR_3_TRAFFIC_LIGHTS_BOX"

    const/4 v13, 0x4

    const/4 v14, 0x4

    const/4 v15, 0x3

    const-string v16, "3TrafficLights2"

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_TRAFFIC_LIGHTS_BOX:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object v11, v0

    const-string v18, "GYR_3_SHAPES"

    const/16 v19, 0x5

    const/16 v20, 0x5

    const/16 v21, 0x3

    const-string v22, "3Signs"

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_SHAPES:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object v12, v0

    const-string v24, "GYR_3_SYMBOLS_CIRCLE"

    const/16 v25, 0x6

    const/16 v26, 0x6

    const/16 v27, 0x3

    const-string v28, "3Symbols"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_SYMBOLS_CIRCLE:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object v13, v0

    const-string v15, "GYR_3_SYMBOLS"

    const/16 v16, 0x7

    const/16 v17, 0x7

    const/16 v18, 0x3

    const-string v19, "3Symbols2"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_3_SYMBOLS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object v14, v0

    const-string v21, "GYR_4_ARROWS"

    const/16 v22, 0x8

    const/16 v23, 0x8

    const/16 v24, 0x4

    const-string v25, "4Arrows"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYR_4_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object v15, v0

    const-string v27, "GREY_4_ARROWS"

    const/16 v28, 0x9

    const/16 v29, 0x9

    const/16 v30, 0x4

    const-string v31, "4ArrowsGray"

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GREY_4_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object/from16 v16, v0

    const-string v18, "RB_4_TRAFFIC_LIGHTS"

    const/16 v19, 0xa

    const/16 v20, 0xa

    const/16 v21, 0x4

    const-string v22, "4RedToBlack"

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->RB_4_TRAFFIC_LIGHTS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object/from16 v17, v0

    const-string v24, "RATINGS_4"

    const/16 v25, 0xb

    const/16 v26, 0xb

    const/16 v27, 0x4

    const-string v28, "4Rating"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->RATINGS_4:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object/from16 v18, v0

    const-string v30, "GYRB_4_TRAFFIC_LIGHTS"

    const/16 v31, 0xc

    const/16 v32, 0xc

    const/16 v33, 0x4

    const-string v34, "4TrafficLights"

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYRB_4_TRAFFIC_LIGHTS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object/from16 v19, v0

    const-string v21, "GYYYR_5_ARROWS"

    const/16 v22, 0xd

    const/16 v23, 0xd

    const/16 v24, 0x5

    const-string v25, "5Arrows"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GYYYR_5_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object/from16 v20, v0

    const-string v27, "GREY_5_ARROWS"

    const/16 v28, 0xe

    const/16 v29, 0xe

    const/16 v30, 0x5

    const-string v31, "5ArrowsGray"

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->GREY_5_ARROWS:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object/from16 v21, v0

    const-string v33, "RATINGS_5"

    const/16 v34, 0xf

    const/16 v35, 0xf

    const/16 v36, 0x5

    const-string v37, "5Rating"

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->RATINGS_5:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    new-instance v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-object/from16 v22, v0

    const-string v24, "QUARTERS_5"

    const/16 v25, 0x10

    const/16 v26, 0x10

    const/16 v27, 0x5

    const-string v28, "5Quarters"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->QUARTERS_5:Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    filled-new-array/range {v6 .. v22}, [Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->$VALUES:[Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->id:I

    iput p4, p0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->num:I

    iput-object p5, p0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->name:Ljava/lang/String;

    return-void
.end method

.method public static byId(I)Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
    .locals 1

    invoke-static {}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->values()[Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static byName(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
    .locals 5

    invoke-static {}, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->values()[Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
    .locals 1

    const-class v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;
    .locals 1

    sget-object v0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->$VALUES:[Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    invoke-virtual {v0}, [Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/ss/usermodel/IconMultiStateFormatting$IconSet;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
