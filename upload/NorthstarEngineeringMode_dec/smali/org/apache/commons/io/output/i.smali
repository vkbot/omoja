.class public final Lorg/apache/commons/io/output/i;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field public static final synthetic b1:I


# instance fields
.field public Z:Z

.field public final c:I

.field public final r:Lm4/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm4/a<",
            "Lorg/apache/commons/io/output/i;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lm4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lm4/b<",
            "Lorg/apache/commons/io/output/i;",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation
.end field

.field public y:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/state/b;Ls0/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/commons/io/output/i;->c:I

    iput-object p1, p0, Lorg/apache/commons/io/output/i;->r:Lm4/a;

    iput-object p2, p0, Lorg/apache/commons/io/output/i;->x:Lm4/b;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget-boolean v0, p0, Lorg/apache/commons/io/output/i;->Z:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/io/output/i;->y:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget p1, p0, Lorg/apache/commons/io/output/i;->c:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/commons/io/output/i;->Z:Z

    iget-object p1, p0, Lorg/apache/commons/io/output/i;->r:Lm4/a;

    invoke-interface {p1, p0}, Lm4/a;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final close()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/io/output/i;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lorg/apache/commons/io/output/i;->x:Lm4/b;

    invoke-interface {v0, p0}, Lm4/b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/io/output/i;->x:Lm4/b;

    invoke-interface {v0, p0}, Lm4/b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final write(I)V
    .locals 4

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/i;->a(I)V

    iget-object v0, p0, Lorg/apache/commons/io/output/i;->x:Lm4/b;

    .line 9
    invoke-interface {v0, p0}, Lm4/b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 10
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget-wide v0, p0, Lorg/apache/commons/io/output/i;->y:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/i;->y:J

    return-void
.end method

.method public final write([B)V
    .locals 4

    .line 1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/io/output/i;->a(I)V

    iget-object v0, p0, Lorg/apache/commons/io/output/i;->x:Lm4/b;

    .line 2
    invoke-interface {v0, p0}, Lm4/b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 3
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-wide v0, p0, Lorg/apache/commons/io/output/i;->y:J

    .line 4
    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/io/output/i;->y:J

    return-void
.end method

.method public final write([BII)V
    .locals 2

    .line 5
    invoke-virtual {p0, p3}, Lorg/apache/commons/io/output/i;->a(I)V

    iget-object v0, p0, Lorg/apache/commons/io/output/i;->x:Lm4/b;

    .line 6
    invoke-interface {v0, p0}, Lm4/b;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/OutputStream;

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide p1, p0, Lorg/apache/commons/io/output/i;->y:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/io/output/i;->y:J

    return-void
.end method
