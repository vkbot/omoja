.class public final Lo4/c;
.super Lo4/a;
.source "SourceFile"


# static fields
.field public static final r:D


# instance fields
.field public final c:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lz4/b;->a:[[D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lo4/c;->r:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7

    .line 4
    new-instance v0, Ls4/a;

    invoke-direct {v0}, Ls4/a;-><init>()V

    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lo4/c;-><init>(DDI)V

    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    cmpg-double p1, p3, p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-static {p3, p4, p1}, Lz4/b;->g(D[D)D

    move-result-wide p2

    const-wide p4, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {p4, p5, p1}, Lz4/b;->g(D[D)D

    move-result-wide p4

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p4, v0

    add-double/2addr p4, p2

    iput-wide p4, p0, Lo4/c;->c:D

    return-void

    .line 3
    :cond_0
    new-instance p0, Lp4/k;

    sget-object p1, Lq4/c;->w1:Lq4/c;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lp4/k;-><init>(Lq4/c;Ljava/lang/Number;)V

    throw p0
.end method
