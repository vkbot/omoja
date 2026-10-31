.class public final Ln7/i1;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ln7/j1;

.field public final synthetic c:Lc3/e;

.field public final synthetic d:J

.field public final synthetic e:Ln7/k1;


# direct methods
.method public constructor <init>(Ln7/k1;Ln7/j1;Lc3/e;J)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln7/i1;->e:Ln7/k1;

    .line 5
    .line 6
    iput-object p2, p0, Ln7/i1;->b:Ln7/j1;

    .line 7
    .line 8
    iput-object p3, p0, Ln7/i1;->c:Lc3/e;

    .line 9
    .line 10
    iput-wide p4, p0, Ln7/i1;->d:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 1
    iget-object v0, p0, Ln7/i1;->e:Ln7/k1;

    .line 2
    .line 3
    iget-object v1, p0, Ln7/i1;->b:Ln7/j1;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ln7/k1;->execute(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ln7/i1;->c:Lc3/e;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "(scheduled in SynchronizationContext with delay of "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-wide v1, p0, Ln7/i1;->d:J

    .line 21
    .line 22
    const-string v3, ")"

    .line 23
    .line 24
    invoke-static {v0, v1, v2, v3}, Lai/onnxruntime/a;->n(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method
