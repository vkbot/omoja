.class public final Le5/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lf5/d;

.field public static b:Z

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lf5/d;->p1:La5/a;

    sget-object v0, Lf5/d$b;->a:Lf5/d;

    sput-object v0, Le5/s;->a:Lf5/d;

    invoke-static {}, Lg5/n;->b()Lg5/n;

    move-result-object v0

    const-string v1, "log4j2.threadContextMap"

    invoke-virtual {v0, v1}, Lg5/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Le5/s;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "log4j2.garbagefree.threadContextMap"

    invoke-virtual {v0, v2, v1}, Lg5/n;->a(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Le5/s;->b:Z

    return-void
.end method
