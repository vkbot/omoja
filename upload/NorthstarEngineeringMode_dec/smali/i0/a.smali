.class public Li0/a;
.super Li0/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li0/a$b;
    }
.end annotation


# static fields
.field public static final j:Li0/a$a;


# instance fields
.field public final c:Li0/a$b;

.field public d:Li0/j;

.field public final e:D

.field public final f:I

.field public g:I

.field public h:I

.field public final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Li0/a$a;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Li0/a;->j:Li0/a$a;

    return-void
.end method

.method public constructor <init>(Li0/b;Li0/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Li0/g;->a:Li0/b;

    iput-object p2, p0, Li0/g;->b:Li0/d;

    sget-object p1, Li0/a;->j:Li0/a$a;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li0/a$b;

    iput-object p1, p0, Li0/a;->c:Li0/a$b;

    new-instance p1, Li0/j;

    const/16 p2, 0x8

    new-array v0, p2, [D

    fill-array-data v0, :array_0

    invoke-direct {p1, v0, p2}, Li0/j;-><init>([DI)V

    iput-object p1, p0, Li0/a;->d:Li0/j;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    iput-wide p1, p0, Li0/a;->e:D

    const/4 p1, 0x1

    iput p1, p0, Li0/a;->f:I

    const/4 p2, 0x4

    iput p2, p0, Li0/a;->g:I

    const/4 p2, 0x0

    iput p2, p0, Li0/a;->h:I

    iput-boolean p1, p0, Li0/a;->i:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ControlPath cannot be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method
