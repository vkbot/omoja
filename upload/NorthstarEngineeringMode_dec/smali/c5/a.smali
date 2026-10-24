.class public abstract Lc5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/f;
.implements Ljava/io/Serializable;


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/String;)Lc5/e;
    .locals 0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lc5/g;->c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/String;Ljava/io/Serializable;)Lc5/e;
    .locals 0

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lc5/g;->c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lc5/e;
    .locals 0

    new-instance p0, Lc5/o;

    invoke-direct {p0, p1}, Lc5/o;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;)Lc5/e;
    .locals 0

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lc5/g;->c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc5/e;
    .locals 1

    const-string/jumbo v0, "{} caught {} logging {}: {}"

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lc5/g;->c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;

    move-result-object p0

    return-object p0
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Lc5/e;
    .locals 1

    const-string v0, "Unable to load OSGI services: The bundle has no valid BundleContext for serviceType = {}, lookup = {}, lookupClass = {}, bundle = {}"

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lc5/g;->c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;

    move-result-object p0

    return-object p0
.end method
