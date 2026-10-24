.class public abstract Lo3/l;
.super Lo3/b;
.source "SourceFile"

# interfaces
.implements Ls3/c;


# instance fields
.field public final c1:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    sget-object v1, Lo3/b$a;->c:Lo3/b$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 2
    invoke-direct/range {v0 .. v5}, Lo3/b;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo3/l;->c1:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const-class v2, Lv3/c0;

    const-string v3, "classSimpleName"

    const-string v4, "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;"

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lo3/b;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo3/l;->c1:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo3/l;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lo3/l;

    invoke-virtual {p0}, Lo3/b;->c()Lo3/c;

    move-result-object v1

    invoke-virtual {p1}, Lo3/b;->c()Lo3/c;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo3/b;->y:Ljava/lang/String;

    iget-object v3, p1, Lo3/b;->y:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo3/b;->Z:Ljava/lang/String;

    iget-object v3, p1, Lo3/b;->Z:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lo3/b;->r:Ljava/lang/Object;

    iget-object p1, p1, Lo3/b;->r:Ljava/lang/Object;

    invoke-static {p0, p1}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    instance-of v0, p1, Ls3/c;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lo3/l;->c1:Z

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lo3/b;->c:Ls3/a;

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lo3/b;->b()Lo3/k;

    move-result-object v0

    iput-object v0, p0, Lo3/b;->c:Ls3/a;

    :cond_4
    move-object p0, v0

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    return v2
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Lo3/b;->c()Lo3/c;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo3/b;->y:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lo3/b;->Z:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lo3/l;->c1:Z

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo3/b;->c:Ls3/a;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lo3/b;->b()Lo3/k;

    move-result-object v0

    iput-object v0, p0, Lo3/b;->c:Ls3/a;

    :cond_1
    :goto_0
    if-eq v0, p0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lo3/b;->y:Ljava/lang/String;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-static {v0, p0, v1}, La4/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
