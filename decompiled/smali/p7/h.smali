.class public final Lp7/h;
.super Ln7/e;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# static fields
.field public static final n:Lq7/c;

.field public static final o:Ln/p;


# instance fields
.field public final b:Lo7/g2;

.field public final c:Lo7/u2;

.field public final d:Ln/p;

.field public final e:Ln/p;

.field public f:Ljavax/net/ssl/SSLSocketFactory;

.field public final g:Lq7/c;

.field public final h:I

.field public final i:J

.field public final j:J

.field public final k:I

.field public final l:I

.field public final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Lp7/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    new-instance v0, Lq7/b;

    .line 11
    .line 12
    sget-object v1, Lq7/c;->e:Lq7/c;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lq7/b;-><init>(Lq7/c;)V

    .line 15
    .line 16
    .line 17
    sget-object v6, Lq7/a;->o:Lq7/a;

    .line 18
    .line 19
    sget-object v7, Lq7/a;->n:Lq7/a;

    .line 20
    .line 21
    sget-object v2, Lq7/a;->j:Lq7/a;

    .line 22
    .line 23
    sget-object v3, Lq7/a;->l:Lq7/a;

    .line 24
    .line 25
    sget-object v4, Lq7/a;->k:Lq7/a;

    .line 26
    .line 27
    sget-object v5, Lq7/a;->m:Lq7/a;

    .line 28
    .line 29
    filled-new-array/range {v2 .. v7}, [Lq7/a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lq7/b;->a([Lq7/a;)V

    .line 34
    .line 35
    .line 36
    sget-object v1, Lq7/m;->d:Lq7/m;

    .line 37
    .line 38
    filled-new-array {v1}, [Lq7/m;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lq7/b;->b([Lq7/m;)V

    .line 43
    .line 44
    .line 45
    iget-boolean v1, v0, Lq7/b;->a:Z

    .line 46
    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    iput-boolean v1, v0, Lq7/b;->d:Z

    .line 51
    .line 52
    new-instance v1, Lq7/c;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Lq7/c;-><init>(Lq7/b;)V

    .line 55
    .line 56
    .line 57
    sput-object v1, Lp7/h;->n:Lq7/c;

    .line 58
    .line 59
    new-instance v0, Lz3/f;

    .line 60
    .line 61
    const/16 v1, 0xf

    .line 62
    .line 63
    invoke-direct {v0, v1}, Lz3/f;-><init>(I)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Ln/p;

    .line 67
    .line 68
    const/4 v2, 0x5

    .line 69
    invoke-direct {v1, v2, v0}, Ln/p;-><init>(ILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    sput-object v1, Lp7/h;->o:Ln/p;

    .line 73
    .line 74
    sget-object v0, Ln7/m1;->b:Ln7/m1;

    .line 75
    .line 76
    sget-object v1, Ln7/m1;->c:Ln7/m1;

    .line 77
    .line 78
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_0
    const-string v0, "no TLS extensions for cleartext connections"

    .line 83
    .line 84
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lo7/w4;->e:Lo7/u2;

    .line 5
    .line 6
    iput-object v0, p0, Lp7/h;->c:Lo7/u2;

    .line 7
    .line 8
    sget-object v0, Lp7/h;->o:Ln/p;

    .line 9
    .line 10
    iput-object v0, p0, Lp7/h;->d:Ln/p;

    .line 11
    .line 12
    sget-object v0, Lo7/y0;->q:Lo7/u2;

    .line 13
    .line 14
    new-instance v1, Ln/p;

    .line 15
    .line 16
    const/4 v2, 0x5

    .line 17
    invoke-direct {v1, v2, v0}, Ln/p;-><init>(ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lp7/h;->e:Ln/p;

    .line 21
    .line 22
    sget-object v0, Lp7/h;->n:Lq7/c;

    .line 23
    .line 24
    iput-object v0, p0, Lp7/h;->g:Lq7/c;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lp7/h;->h:I

    .line 28
    .line 29
    const-wide v0, 0x7fffffffffffffffL

    .line 30
    .line 31
    .line 32
    .line 33
    .line 34
    iput-wide v0, p0, Lp7/h;->i:J

    .line 35
    .line 36
    sget-wide v0, Lo7/y0;->l:J

    .line 37
    .line 38
    iput-wide v0, p0, Lp7/h;->j:J

    .line 39
    .line 40
    const v0, 0xffff

    .line 41
    .line 42
    .line 43
    iput v0, p0, Lp7/h;->k:I

    .line 44
    .line 45
    const/high16 v0, 0x400000

    .line 46
    .line 47
    iput v0, p0, Lp7/h;->l:I

    .line 48
    .line 49
    const v0, 0x7fffffff

    .line 50
    .line 51
    .line 52
    iput v0, p0, Lp7/h;->m:I

    .line 53
    .line 54
    new-instance v0, Lo7/g2;

    .line 55
    .line 56
    new-instance v1, Lp7/f;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lp7/f;-><init>(Lp7/h;)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Lp7/f;

    .line 62
    .line 63
    invoke-direct {v2, p0}, Lp7/f;-><init>(Lp7/h;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v0, p1, v1, v2}, Lo7/g2;-><init>(Ljava/lang/String;Lp7/f;Lp7/f;)V

    .line 67
    .line 68
    .line 69
    iput-object v0, p0, Lp7/h;->b:Lo7/g2;

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/bumptech/glide/c;->t(Ljava/lang/Object;)Lcom/bumptech/glide/manager/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "delegate"

    .line 6
    .line 7
    iget-object v2, p0, Lp7/h;->b:Lo7/g2;

    .line 8
    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/bumptech/glide/manager/s;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/s;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
