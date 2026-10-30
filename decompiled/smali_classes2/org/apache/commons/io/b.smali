.class public final synthetic Lorg/apache/commons/io/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/IntUnaryOperator;


# instance fields
.field public final synthetic a:Lorg/apache/commons/io/FileSystem;

.field public final synthetic b:C


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/io/FileSystem;C)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/apache/commons/io/b;->a:Lorg/apache/commons/io/FileSystem;

    .line 5
    .line 6
    iput-char p2, p0, Lorg/apache/commons/io/b;->b:C

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final applyAsInt(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/b;->a:Lorg/apache/commons/io/FileSystem;

    .line 2
    .line 3
    iget-char v1, p0, Lorg/apache/commons/io/b;->b:C

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lorg/apache/commons/io/FileSystem;->a(Lorg/apache/commons/io/FileSystem;CI)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
