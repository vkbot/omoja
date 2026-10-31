.class public final synthetic Lorg/apache/commons/io/output/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/io/function/IOConsumer;


# instance fields
.field public final synthetic a:C


# direct methods
.method public synthetic constructor <init>(C)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-char p1, p0, Lorg/apache/commons/io/output/b;->a:C

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-char v0, p0, Lorg/apache/commons/io/output/b;->a:C

    .line 2
    .line 3
    check-cast p1, Ljava/io/Writer;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lorg/apache/commons/io/output/FilterCollectionWriter;->e0(CLjava/io/Writer;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
