.class public Lm0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm0/b$a;
    }
.end annotation


# instance fields
.field public a:Lm0/b$a;

.field public b:Lm0/b$a;

.field public c:I


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lm0/b;->b:Lm0/b$a;

    new-instance v1, Lm0/b$a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v1, Lm0/b$a;->a:Lm0/b$a;

    iput-object v2, v1, Lm0/b$a;->b:Lm0/b$a;

    iput-object p1, v1, Lm0/b$a;->c:Ljava/lang/Object;

    iget p1, p0, Lm0/b;->c:I

    if-nez p1, :cond_0

    iput-object v1, p0, Lm0/b;->a:Lm0/b$a;

    iput-object v1, p0, Lm0/b;->b:Lm0/b$a;

    goto :goto_0

    :cond_0
    iput-object v0, v1, Lm0/b$a;->b:Lm0/b$a;

    iput-object v1, v0, Lm0/b$a;->a:Lm0/b$a;

    iput-object v1, p0, Lm0/b;->b:Lm0/b$a;

    :goto_0
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm0/b;->c:I

    return-void
.end method

.method public final b(Lm0/b$a;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lm0/b;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p1, Lm0/b$a;->c:Ljava/lang/Object;

    iget-object v3, p0, Lm0/b;->a:Lm0/b$a;

    if-ne p1, v3, :cond_2

    iget-object p1, v3, Lm0/b$a;->a:Lm0/b$a;

    iput-object p1, p0, Lm0/b;->a:Lm0/b$a;

    if-nez p1, :cond_1

    iput-object v1, p0, Lm0/b;->b:Lm0/b$a;

    goto :goto_0

    :cond_1
    iput-object v1, p1, Lm0/b$a;->b:Lm0/b$a;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lm0/b;->b:Lm0/b$a;

    if-ne p1, v3, :cond_3

    iget-object p1, v3, Lm0/b$a;->b:Lm0/b$a;

    iput-object p1, p0, Lm0/b;->b:Lm0/b$a;

    iput-object v1, p1, Lm0/b$a;->a:Lm0/b$a;

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lm0/b$a;->b:Lm0/b$a;

    iget-object v3, p1, Lm0/b$a;->a:Lm0/b$a;

    iput-object v3, v1, Lm0/b$a;->a:Lm0/b$a;

    iget-object p1, p1, Lm0/b$a;->a:Lm0/b$a;

    iput-object v1, p1, Lm0/b$a;->b:Lm0/b$a;

    :goto_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lm0/b;->c:I

    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lm0/b;->c:I

    mul-int/lit8 v1, v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lm0/b;->a:Lm0/b$a;

    if-eqz p0, :cond_0

    iget-object v1, p0, Lm0/b$a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lm0/b$a;->a:Lm0/b$a;

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lm0/b$a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lm0/b$a;->a:Lm0/b$a;

    goto :goto_0

    :cond_1
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
