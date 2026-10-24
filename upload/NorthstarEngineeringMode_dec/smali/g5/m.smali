.class public final synthetic Lg5/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lg5/n$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lg5/n$a;Ljava/lang/String;ZLjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg5/m;->a:Lg5/n$a;

    iput-object p2, p0, Lg5/m;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lg5/m;->c:Z

    iput-object p4, p0, Lg5/m;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Lg5/p;

    iget-object v0, p0, Lg5/m;->a:Lg5/n$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lg5/m;->b:Ljava/lang/String;

    invoke-interface {p1, v1}, Lg5/p;->b(Ljava/lang/String;)Z

    move-result v2

    iget-boolean v3, p0, Lg5/m;->c:Z

    iget-object p0, p0, Lg5/m;->d:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Lg5/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_0

    iget-object v4, v0, Lg5/n$a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v3, :cond_2

    invoke-interface {p1, p0}, Lg5/p;->d(Ljava/lang/Iterable;)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget-object v0, v0, Lg5/n$a;->b:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p0, :cond_1

    invoke-interface {p1, p0}, Lg5/p;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, p0}, Lg5/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p1, v1}, Lg5/p;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {p1, v1}, Lg5/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method
