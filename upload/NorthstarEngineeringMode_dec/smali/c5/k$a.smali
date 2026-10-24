.class public final Lc5/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc5/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final c:Ljava/lang/String;

.field public final r:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/k$a;->c:Ljava/lang/String;

    iput-object p2, p0, Lc5/k$a;->r:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final B0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc5/k$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final E1()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lc5/k$a;->r:Ljava/lang/Throwable;

    return-object p0
.end method

.method public final getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lc5/k$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final o()[Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
