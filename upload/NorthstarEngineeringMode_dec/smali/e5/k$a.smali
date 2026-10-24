.class public final Le5/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le5/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le5/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Le5/g;",
        ">",
        "Ljava/lang/Object;",
        "Le5/k$b<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public final a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p0
.end method

.method public final b(Ljava/util/Map;Ljava/lang/String;Ld5/a;)V
    .locals 0

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {p1, p2, p3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
