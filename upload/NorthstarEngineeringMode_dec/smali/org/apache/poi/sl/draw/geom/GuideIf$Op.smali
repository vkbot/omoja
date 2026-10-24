.class public final enum Lorg/apache/poi/sl/draw/geom/GuideIf$Op;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/draw/geom/GuideIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Op"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/poi/sl/draw/geom/GuideIf$Op;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum abs:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum adddiv:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum addsub:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum at2:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum cat2:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum cos:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum ifelse:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum max:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum min:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum mod:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum muldiv:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum pin:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum sat2:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum sin:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum sqrt:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum tan:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

.field public static final enum val:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    new-instance v1, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object v0, v1

    const-string v2, "muldiv"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->muldiv:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    new-instance v2, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object v1, v2

    const-string v3, "addsub"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->addsub:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    new-instance v3, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object v2, v3

    const-string v4, "adddiv"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->adddiv:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    new-instance v4, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object v3, v4

    const-string v5, "ifelse"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->ifelse:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    new-instance v5, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object v4, v5

    const-string/jumbo v6, "val"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->val:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    new-instance v6, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object v5, v6

    const-string v7, "abs"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->abs:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    new-instance v7, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object v6, v7

    const-string/jumbo v8, "sqrt"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->sqrt:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    new-instance v8, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object v7, v8

    const-string v9, "max"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->max:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    new-instance v9, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object v8, v9

    const-string v10, "min"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->min:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    new-instance v10, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object v9, v10

    const-string v11, "at2"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->at2:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    new-instance v11, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object v10, v11

    const-string/jumbo v12, "sin"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->sin:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    new-instance v12, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object v11, v12

    const-string v13, "cos"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->cos:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    new-instance v13, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object v12, v13

    const-string/jumbo v14, "tan"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->tan:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    new-instance v14, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object v13, v14

    const-string v15, "cat2"

    move-object/from16 v17, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->cat2:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    new-instance v0, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object v14, v0

    const-string/jumbo v15, "sat2"

    move-object/from16 v18, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->sat2:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    new-instance v0, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object v15, v0

    const-string/jumbo v1, "pin"

    move-object/from16 v19, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->pin:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    new-instance v0, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object/from16 v16, v0

    const-string v1, "mod"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->mod:Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    filled-new-array/range {v0 .. v16}, [Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->$VALUES:[Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/poi/sl/draw/geom/GuideIf$Op;
    .locals 1

    const-class v0, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    return-object p0
.end method

.method public static values()[Lorg/apache/poi/sl/draw/geom/GuideIf$Op;
    .locals 1

    sget-object v0, Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->$VALUES:[Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    invoke-virtual {v0}, [Lorg/apache/poi/sl/draw/geom/GuideIf$Op;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/poi/sl/draw/geom/GuideIf$Op;

    return-object v0
.end method
