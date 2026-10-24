.class public final Lc5/j;
.super Lc5/a;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc5/j;

    invoke-direct {v0}, Lc5/j;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)Lc5/e;
    .locals 0

    new-instance p0, Lc5/i;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lc5/i;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/String;Ljava/io/Serializable;)Lc5/e;
    .locals 0

    new-instance p0, Lc5/i;

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lc5/i;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public final varargs c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;
    .locals 0

    new-instance p0, Lc5/i;

    invoke-direct {p0, p1, p2}, Lc5/i;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;)Lc5/e;
    .locals 0

    new-instance p0, Lc5/i;

    filled-new-array {p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lc5/i;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc5/e;
    .locals 0

    new-instance p0, Lc5/i;

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "{} caught {} logging {}: {}"

    invoke-direct {p0, p2, p1}, Lc5/i;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)Lc5/e;
    .locals 0

    new-instance p0, Lc5/i;

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Unable to load OSGI services: The bundle has no valid BundleContext for serviceType = {}, lookup = {}, lookupClass = {}, bundle = {}"

    invoke-direct {p0, p2, p1}, Lc5/i;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method
