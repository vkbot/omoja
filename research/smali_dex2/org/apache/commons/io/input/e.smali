.class public final synthetic Lorg/apache/commons/io/input/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lorg/apache/commons/io/input/e;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final test(I)Z
    .registers 3

    .line 1
    iget v0, p0, Lorg/apache/commons/io/input/e;->a:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Lorg/apache/commons/io/input/CharacterFilterReader;->c(II)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
