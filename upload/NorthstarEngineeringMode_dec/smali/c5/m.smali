.class public final Lc5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/e;
.implements Lg5/w;
.implements Lc5/b;


# instance fields
.field public transient Z:[Ljava/lang/Object;

.field public final transient b1:[Ljava/lang/Object;

.field public c:Ljava/lang/String;

.field public transient c1:Ljava/lang/Throwable;

.field public transient d1:Z

.field public final r:Lc5/h$a;

.field public final x:Ljava/lang/StringBuilder;

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lc5/h$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc5/m;->r:Lc5/h$a;

    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lg5/a;->c:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lc5/m;->x:Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lc5/m;->b1:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc5/m;->d1:Z

    return-void
.end method


# virtual methods
.method public final B0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lc5/m;->x:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lc5/m;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v2, Lg5/a;->c:I

    invoke-static {v0, v2}, Lg5/x;->b(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object p0

    :catchall_0
    move-exception p0

    sget v2, Lg5/a;->c:I

    invoke-static {v0, v2}, Lg5/x;->b(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    throw p0
.end method

.method public final E1()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lc5/m;->c1:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 3

    iget-object v0, p0, Lc5/m;->c:Ljava/lang/String;

    iget-object v1, p0, Lc5/m;->Z:[Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p0, Lc5/m;->b1:[Ljava/lang/Object;

    :cond_0
    iget v2, p0, Lc5/m;->y:I

    iget-object p0, p0, Lc5/m;->r:Lc5/h$a;

    invoke-static {p1, v0, v1, v2, p0}, Lc5/h;->c(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;ILc5/h$a;)V

    return-void
.end method

.method public final b([Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lc5/m;->Z:[Ljava/lang/Object;

    iput-object p2, p0, Lc5/m;->c:Ljava/lang/String;

    iput p3, p0, Lc5/m;->y:I

    iget-object v1, p0, Lc5/m;->r:Lc5/h$a;

    invoke-static {p2, p3, v1}, Lc5/h;->a(Ljava/lang/String;ILc5/h$a;)V

    iget p2, v1, Lc5/h$a;->c:I

    if-ge p2, p3, :cond_0

    add-int/lit8 p3, p3, -0x1

    aget-object p1, p1, p3

    instance-of p2, p1, Ljava/lang/Throwable;

    if-eqz p2, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    :cond_0
    iput-object v0, p0, Lc5/m;->c1:Ljava/lang/Throwable;

    return-void
.end method

.method public final clear()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc5/m;->d1:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lc5/m;->Z:[Ljava/lang/Object;

    iput-object v0, p0, Lc5/m;->c:Ljava/lang/String;

    iput-object v0, p0, Lc5/m;->c1:Ljava/lang/Throwable;

    iget-object p0, p0, Lc5/m;->r:Lc5/h$a;

    iget-object v0, p0, Lc5/h$a;->r:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    const/16 v1, 0x10

    if-le v0, v1, :cond_0

    new-array v0, v1, [I

    iput-object v0, p0, Lc5/h$a;->r:[I

    :cond_0
    return-void
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc5/m;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final o()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lc5/m;->Z:[Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc5/m;->b1:[Ljava/lang/Object;

    iget p0, p0, Lc5/m;->y:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReusableParameterizedMessage[messagePattern="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc5/m;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", argCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lc5/m;->y:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", throwableProvided="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lc5/m;->c1:Ljava/lang/Throwable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
