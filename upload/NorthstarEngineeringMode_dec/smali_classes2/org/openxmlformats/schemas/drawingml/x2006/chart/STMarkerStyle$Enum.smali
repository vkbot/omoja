.class public final Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;
.super Li5/h0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Enum"
.end annotation


# static fields
.field static final INT_AUTO:I = 0xc

.field static final INT_CIRCLE:I = 0x1

.field static final INT_DASH:I = 0x2

.field static final INT_DIAMOND:I = 0x3

.field static final INT_DOT:I = 0x4

.field static final INT_NONE:I = 0x5

.field static final INT_PICTURE:I = 0x6

.field static final INT_PLUS:I = 0x7

.field static final INT_SQUARE:I = 0x8

.field static final INT_STAR:I = 0x9

.field static final INT_TRIANGLE:I = 0xa

.field static final INT_X:I = 0xb

.field private static final serialVersionUID:J = 0x1L

.field public static final table:Li5/h0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Li5/h0$a;

    new-instance v1, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v2, "circle"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v3, "dash"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v4, "diamond"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v5, "dot"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v6, "none"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v6, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v7, "picture"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v7, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v8, "plus"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v8, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v9, "square"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v9, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v10, "star"

    const/16 v11, 0x9

    invoke-direct {v9, v10, v11}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v10, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v11, "triangle"

    const/16 v12, 0xa

    invoke-direct {v10, v11, v12}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v11, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v12, "x"

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    new-instance v12, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    const-string v13, "auto"

    const/16 v14, 0xc

    invoke-direct {v12, v13, v14}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v1 .. v12}, [Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    move-result-object v1

    invoke-direct {v0, v1}, Li5/h0$a;-><init>([Li5/h0;)V

    sput-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->table:Li5/h0$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Li5/h0;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->table:Li5/h0$a;

    invoke-virtual {v0, p0}, Li5/h0$a;->a(I)Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    return-object p0
.end method

.method public static forString(Ljava/lang/String;)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;
    .locals 1

    sget-object v0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->table:Li5/h0$a;

    invoke-virtual {v0, p0}, Li5/h0$a;->b(Ljava/lang/String;)Li5/h0;

    move-result-object p0

    check-cast p0, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    return-object p0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Li5/h0;->intValue()I

    move-result p0

    invoke-static {p0}, Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;->forInt(I)Lorg/openxmlformats/schemas/drawingml/x2006/chart/STMarkerStyle$Enum;

    move-result-object p0

    return-object p0
.end method
