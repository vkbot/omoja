.class public final Lr5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr5/b$a;,
        Lr5/b$b;
    }
.end annotation


# instance fields
.field public final a:Lr5/b$a;

.field public final b:Z


# direct methods
.method public constructor <init>(Lr5/b$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr5/b;->a:Lr5/b$a;

    iput-boolean p2, p0, Lr5/b;->b:Z

    return-void
.end method

.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lr5/b;
    .locals 12

    new-instance v0, Lr5/c;

    invoke-direct {v0, p0, p2}, Lr5/c;-><init>(Ljava/util/Map;Ljava/lang/String;)V

    const/4 p0, 0x0

    iput p0, v0, Lr5/c;->g:I

    const/4 p2, 0x1

    iput p2, v0, Lr5/c;->h:I

    iput p2, v0, Lr5/c;->i:I

    iput-object p1, v0, Lr5/c;->a:Ljava/lang/String;

    :goto_0
    const-string p1, "declare"

    const-string v1, "namespace"

    filled-new-array {p1, v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v2

    iget-object v3, v0, Lr5/c;->e:Ljava/util/HashMap;

    const/16 v4, 0xd

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x20

    const-string v8, "$xmlbeans!ns_boundary"

    const-string v9, ";"

    iget-object v10, v0, Lr5/c;->f:Ljava/util/Map;

    if-eqz v2, :cond_6

    move p1, p0

    :goto_1
    invoke-virtual {v0, p0}, Lr5/c;->d(I)I

    move-result v1

    if-eq v1, v7, :cond_5

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_5

    if-ne v1, v4, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {v0}, Lr5/c;->h()Ljava/lang/String;

    move-result-object p1

    const-string v1, "="

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lr5/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "Redefinition of namespace prefix: "

    if-nez v2, :cond_2

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v10, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr5/c;->g([Ljava/lang/String;)Z

    iget p1, v0, Lr5/c;->g:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v10, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr5/c;->f(Ljava/lang/String;)Lr5/b$b;

    move-result-object p0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr5/c;->f(Ljava/lang/String;)Lr5/b$b;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "Expected \'=\'"

    invoke-virtual {v0, p0}, Lr5/c;->f(Ljava/lang/String;)Lr5/b$b;

    move-result-object p0

    throw p0

    :cond_4
    const-string p0, "Expected prefix after \'declare namespace\'"

    invoke-virtual {v0, p0}, Lr5/c;->f(Ljava/lang/String;)Lr5/b$b;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    invoke-virtual {v0}, Lr5/c;->b()V

    move p1, p2

    goto :goto_1

    :cond_6
    const-string v2, "default"

    const-string v11, "element"

    filled-new-array {p1, v2, v11, v1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result p1

    const-string v1, ""

    if-eqz p1, :cond_a

    invoke-virtual {v0}, Lr5/c;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "$xmlbeans!default_uri"

    invoke-interface {v10, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-interface {v10, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, v0, Lr5/c;->g:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v10, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    const-string p0, "Default Namespace declaration must end with ;"

    invoke-virtual {v0, p0}, Lr5/c;->f(Ljava/lang/String;)Lr5/b$b;

    move-result-object p0

    throw p0

    :cond_8
    const-string p0, "Redefinition of default element namespace : "

    invoke-virtual {v0, p0}, Lr5/c;->f(Ljava/lang/String;)Lr5/b$b;

    move-result-object p0

    throw p0

    :cond_9
    const-string p0, "Redefinition of default element namespace"

    invoke-virtual {v0, p0}, Lr5/c;->f(Ljava/lang/String;)Lr5/b$b;

    move-result-object p0

    throw p0

    :cond_a
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v3, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Lr5/c;->i(Ljava/util/ArrayList;)V

    :goto_3
    const-string p2, "|"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-virtual {v0, p1}, Lr5/c;->i(Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_c
    new-instance p2, Lr5/b$a;

    new-array v1, p0, [Lr5/h;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lr5/h;

    invoke-direct {p2, p1}, Lr5/b$a;-><init>([Lr5/h;)V

    :goto_4
    invoke-virtual {v0, p0}, Lr5/c;->d(I)I

    move-result p1

    if-eq p1, v7, :cond_f

    if-eq p1, v6, :cond_f

    if-eq p1, v5, :cond_f

    if-ne p1, v4, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v0, p0}, Lr5/c;->d(I)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_e

    new-instance p0, Lr5/b;

    iget-boolean p1, v0, Lr5/c;->b:Z

    invoke-direct {p0, p2, p1}, Lr5/b;-><init>(Lr5/b$a;Z)V

    return-object p0

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unexpected char \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lr5/c;->d(I)I

    move-result p0

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr5/c;->f(Ljava/lang/String;)Lr5/b$b;

    move-result-object p0

    throw p0

    :cond_f
    :goto_5
    invoke-virtual {v0}, Lr5/c;->b()V

    goto :goto_4
.end method
