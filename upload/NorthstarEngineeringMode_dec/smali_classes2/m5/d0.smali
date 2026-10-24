.class public final synthetic Lm5/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lm5/z0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lorg/w3c/dom/DocumentType;


# direct methods
.method public synthetic constructor <init>(Lm5/z0;Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/d0;->a:Lm5/z0;

    iput-object p2, p0, Lm5/d0;->b:Ljava/lang/String;

    iput-object p3, p0, Lm5/d0;->c:Ljava/lang/String;

    iput-object p4, p0, Lm5/d0;->d:Lorg/w3c/dom/DocumentType;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lm5/d0;->c:Ljava/lang/String;

    iget-object v1, p0, Lm5/d0;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lm5/o0;->d0(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lm5/d0;->a:Lm5/z0;

    invoke-virtual {v3}, Lm5/z0;->J()Lm5/h;

    move-result-object v4

    iget-object v5, v4, Lm5/h;->a:Lm5/z0;

    invoke-static {v5, v2}, Lm5/h;->h(Lm5/z0;Z)Lm5/b1;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lm5/h;->Y(Lm5/w1;I)V

    invoke-virtual {v4}, Lm5/h;->t()Lm5/o0$a;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Document;

    invoke-virtual {v4}, Lm5/h;->Z()Z

    invoke-virtual {v3, v1, v0}, Lm5/z0;->G(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v4, v0}, Lm5/h;->i(Ljavax/xml/namespace/QName;)V

    iget-object p0, p0, Lm5/d0;->d:Lorg/w3c/dom/DocumentType;

    if-nez p0, :cond_1

    invoke-virtual {v4, v2}, Lm5/h;->v0(Z)Z

    const/4 p0, 0x0

    :try_start_0
    invoke-static {v4, p0, p0}, Lm5/z0;->d(Lm5/h;Li5/c0;Li5/z1;)V
    :try_end_0
    .catch Li5/z0; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Lm5/h;->h0()V

    return-object v5

    :catch_0
    move-exception p0

    new-instance v0, Li5/c2;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Li5/z0;->c:Ljava/util/List;

    if-eqz p0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v0, Li5/c2;->c:Ljava/util/List;

    :cond_0
    throw v0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Not impl"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
