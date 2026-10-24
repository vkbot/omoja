.class public final Le5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/f;


# instance fields
.field public final c:Lc5/g;


# direct methods
.method public constructor <init>(Lc5/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lc5/g;

    iput-object p1, p0, Le5/l;->c:Lc5/g;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)Lc5/e;
    .locals 0

    iget-object p0, p0, Le5/l;->c:Lc5/g;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lc5/g;->c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;Ljava/io/Serializable;)Lc5/e;
    .locals 0

    iget-object p0, p0, Le5/l;->c:Lc5/g;

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lc5/g;->c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;

    move-result-object p0

    return-object p0
.end method

.method public final varargs c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;
    .locals 0

    iget-object p0, p0, Le5/l;->c:Lc5/g;

    invoke-interface {p0, p1, p2}, Lc5/g;->c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lc5/e;
    .locals 0

    iget-object p0, p0, Le5/l;->c:Lc5/g;

    invoke-interface {p0, p1}, Lc5/g;->d(Ljava/lang/String;)Lc5/e;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;)Lc5/e;
    .locals 0

    iget-object p0, p0, Le5/l;->c:Lc5/g;

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lc5/g;->c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc5/e;
    .locals 0

    iget-object p0, p0, Le5/l;->c:Lc5/g;

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "{} caught {} logging {}: {}"

    invoke-interface {p0, p2, p1}, Lc5/g;->c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Lc5/e;
    .locals 0

    iget-object p0, p0, Le5/l;->c:Lc5/g;

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Unable to load OSGI services: The bundle has no valid BundleContext for serviceType = {}, lookup = {}, lookupClass = {}, bundle = {}"

    invoke-interface {p0, p2, p1}, Lc5/g;->c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;

    move-result-object p0

    return-object p0
.end method
