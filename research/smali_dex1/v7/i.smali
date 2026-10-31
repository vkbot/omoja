.class public final Lv7/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Lv7/j;

.field public final b:Lv7/e;

.field public final c:Ln7/k0;

.field public d:Ln7/j;

.field public e:Ln7/h0;

.field public f:Z

.field public final synthetic g:Lv7/x;


# direct methods
.method public constructor <init>(Lv7/x;Lv7/j;Lo7/f3;Lo7/t1;)V
    .registers 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv7/i;->g:Lv7/x;

    .line 5
    .line 6
    iput-object p2, p0, Lv7/i;->a:Lv7/j;

    .line 7
    .line 8
    iput-object p3, p0, Lv7/i;->c:Ln7/k0;

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lv7/i;->f:Z

    .line 12
    .line 13
    iput-object p4, p0, Lv7/i;->e:Ln7/h0;

    .line 14
    .line 15
    new-instance p1, Lv7/e;

    .line 16
    .line 17
    new-instance p2, Lv7/h;

    .line 18
    .line 19
    const/4 p4, 0x1

    .line 20
    invoke-direct {p2, p4, p0}, Lv7/h;-><init>(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p2}, Lv7/e;-><init>(Lv7/a;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, p0, Lv7/i;->b:Lv7/e;

    .line 27
    .line 28
    sget-object p2, Ln7/j;->b:Ln7/j;

    .line 29
    .line 30
    iput-object p2, p0, Lv7/i;->d:Ln7/j;

    .line 31
    .line 32
    invoke-virtual {p1, p3}, Lv7/e;->i(Ln7/k0;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Address = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lv7/i;->a:Lv7/j;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", state = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lv7/i;->d:Ln7/j;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", picker type: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lv7/i;->e:Ln7/h0;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", lb: "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lv7/i;->b:Lv7/e;

    .line 43
    .line 44
    invoke-virtual {v1}, Lv7/e;->g()Ln7/j0;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-boolean v1, p0, Lv7/i;->f:Z

    .line 56
    .line 57
    if-eqz v1, :cond_3d

    .line 58
    .line 59
    const-string v1, ", deactivated"

    .line 60
    .line 61
    goto :goto_3f

    .line 62
    :cond_3d
    const-string v1, ""

    .line 63
    .line 64
    :goto_3f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0
.end method
