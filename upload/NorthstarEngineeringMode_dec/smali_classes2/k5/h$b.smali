.class public final Lk5/h$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Lk5/b;

.field public e:Z

.field public f:[Lk5/h$a;

.field public g:Lk5/h$d;

.field public h:Lk5/h$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lk5/h$b;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;II)V
    .locals 3

    iget-object v0, p0, Lk5/h$b;->g:Lk5/h$d;

    if-nez v0, :cond_0

    new-instance v0, Lk5/h$d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lk5/h$d;->a:Ljava/lang/String;

    iput-object v0, p0, Lk5/h$b;->g:Lk5/h$d;

    goto :goto_0

    :cond_0
    iput-object p1, v0, Lk5/h$d;->a:Ljava/lang/String;

    :goto_0
    iget-object p1, p0, Lk5/h$b;->g:Lk5/h$d;

    iput-object p1, p0, Lk5/h$b;->h:Lk5/h$d;

    const/4 p1, 0x0

    iput p1, p0, Lk5/h$b;->a:I

    iput p2, p0, Lk5/h$b;->b:I

    iput p2, p0, Lk5/h$b;->c:I

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lk5/h$b;->b(Z)V

    const/4 p2, 0x0

    iput-object p2, p0, Lk5/h$b;->d:Lk5/b;

    iget-object p2, p0, Lk5/h$b;->f:[Lk5/h$a;

    if-eqz p2, :cond_1

    array-length p2, p2

    if-eq p2, p3, :cond_2

    :cond_1
    new-array p2, p3, [Lk5/h$a;

    iput-object p2, p0, Lk5/h$b;->f:[Lk5/h$a;

    :cond_2
    move p2, p1

    :goto_1
    if-ge p2, p3, :cond_4

    iget-object v0, p0, Lk5/h$b;->f:[Lk5/h$a;

    aget-object v1, v0, p2

    if-nez v1, :cond_3

    new-instance v1, Lk5/h$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, v1, Lk5/h$a;->a:[I

    iput p1, v1, Lk5/h$a;->b:I

    aput-object v1, v0, p2

    goto :goto_2

    :cond_3
    iput p1, v1, Lk5/h$a;->b:I

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final declared-synchronized b(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lk5/h$b;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
