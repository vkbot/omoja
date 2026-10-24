.class public final Lc5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/e;
.implements Lg5/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/i$a;
    }
.end annotation


# static fields
.field public static final b1:Lf5/d;

.field public static final c1:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lc5/i$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public Z:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final transient r:[Ljava/lang/Object;

.field public final transient x:Ljava/lang/Throwable;

.field public final y:Lc5/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lf5/d;->p1:La5/a;

    sget-object v0, Lf5/d$b;->a:Lf5/d;

    sput-object v0, Lc5/i;->b1:Lf5/d;

    sget-boolean v0, Lg5/a;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/h;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/h;-><init>(I)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lc5/i;->c1:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc5/i;->r:[Ljava/lang/Object;

    iput-object p1, p0, Lc5/i;->c:Ljava/lang/String;

    if-eqz p2, :cond_0

    array-length v0, p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lc5/h$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, v0, v1}, Lc5/h;->a(Ljava/lang/String;ILc5/h$a;)V

    iput-object v1, p0, Lc5/i;->y:Lc5/h$a;

    if-eqz p2, :cond_1

    array-length p1, p2

    iget v0, v1, Lc5/h$a;->c:I

    if-le p1, v0, :cond_1

    array-length p1, p2

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p2, p1

    instance-of p2, p1, Ljava/lang/Throwable;

    if-eqz p2, :cond_1

    check-cast p1, Ljava/lang/Throwable;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lc5/i;->x:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final B0()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lc5/i;->Z:Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Lc5/i;->c1:Ljava/lang/ThreadLocal;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc5/i$a;

    iget-boolean v1, v0, Lc5/i$a;->b:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lc5/i$a;->b:Z

    iget-object v1, v0, Lc5/i$a;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lc5/i;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc5/i;->Z:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v3, Lg5/a;->c:I

    invoke-static {v1, v3}, Lg5/x;->b(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iput-boolean v2, v0, Lc5/i$a;->b:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    sget v3, Lg5/a;->c:I

    invoke-static {v1, v3}, Lg5/x;->b(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    iput-boolean v2, v0, Lc5/i$a;->b:Z

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget v1, Lg5/a;->c:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lc5/i;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc5/i;->Z:Ljava/lang/String;

    :cond_2
    :goto_1
    iget-object p0, p0, Lc5/i;->Z:Ljava/lang/String;

    return-object p0
.end method

.method public final E1()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lc5/i;->x:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final a(Ljava/lang/StringBuilder;)V
    .locals 3

    iget-object v0, p0, Lc5/i;->c:Ljava/lang/String;

    iget-object v1, p0, Lc5/i;->Z:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lc5/i;->r:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    array-length v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object p0, p0, Lc5/i;->y:Lc5/h$a;

    invoke-static {p1, v0, v1, v2, p0}, Lc5/h;->c(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;ILc5/h$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    sget-object v1, Lc5/i;->b1:Lf5/d;

    const-string v2, "Unable to format msg: {}"

    invoke-virtual {v1, v0, v2, p0}, Le5/a;->z(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc5/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc5/i;

    iget-object v1, p1, Lc5/i;->c:Ljava/lang/String;

    iget-object v3, p0, Lc5/i;->c:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lc5/i;->r:[Ljava/lang/Object;

    iget-object p1, p1, Lc5/i;->r:[Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc5/i;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lc5/i;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lc5/i;->r:[Ljava/lang/Object;

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    :cond_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final o()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lc5/i;->r:[Ljava/lang/Object;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ParameterizedMessage[messagePattern="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lc5/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", argCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc5/i;->r:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", throwableProvided="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lc5/i;->x:Ljava/lang/Throwable;

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
