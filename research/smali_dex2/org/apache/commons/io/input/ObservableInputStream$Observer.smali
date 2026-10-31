.class public abstract Lorg/apache/commons/io/input/ObservableInputStream$Observer;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/input/ObservableInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Observer"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public closed()V
    .registers 1

    .line 1
    return-void
.end method

.method public data(I)V
    .registers 2

    .line 1
    return-void
.end method

.method public data([BII)V
    .registers 4

    .line 2
    return-void
.end method

.method public error(Ljava/io/IOException;)V
    .registers 2

    .line 1
    throw p1
.end method

.method public finished()V
    .registers 1

    .line 1
    return-void
.end method
