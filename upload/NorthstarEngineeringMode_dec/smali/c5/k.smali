.class public final Lc5/k;
.super Lc5/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/k$a;
    }
.end annotation


# static fields
.field public static final c:Lc5/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc5/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc5/k;->c:Lc5/k;

    return-void
.end method


# virtual methods
.method public final varargs c(Ljava/lang/String;[Ljava/lang/Object;)Lc5/e;
    .locals 0

    if-nez p2, :cond_0

    new-instance p0, Lc5/o;

    invoke-direct {p0, p1}, Lc5/o;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lc5/i;

    invoke-direct {p0, p1, p2}, Lc5/i;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lc5/k$a;

    invoke-virtual {p0}, Lc5/i;->B0()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lc5/i;->x:Ljava/lang/Throwable;

    invoke-direct {p1, p2, p0}, Lc5/k$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p1
.end method
