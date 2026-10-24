.class public final Le5/b;
.super Ljava/lang/InheritableThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/InheritableThreadLocal<",
        "Lg5/y;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le5/c;


# direct methods
.method public constructor <init>(Le5/c;)V
    .locals 0

    iput-object p1, p0, Le5/b;->a:Le5/c;

    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public final childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg5/y;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Le5/b;->a:Le5/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lg5/t;

    invoke-direct {p0, p1}, Lg5/t;-><init>(Lg5/r;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg5/t;->Z:Z

    :goto_0
    return-object p0
.end method
