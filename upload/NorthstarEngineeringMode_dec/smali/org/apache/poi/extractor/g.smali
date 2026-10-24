.class public final synthetic Lorg/apache/poi/extractor/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic r:Ljava/lang/ThreadLocal;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ThreadLocal;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/extractor/g;->c:I

    iput-object p1, p0, Lorg/apache/poi/extractor/g;->r:Ljava/lang/ThreadLocal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lorg/apache/poi/extractor/g;->c:I

    iget-object p0, p0, Lorg/apache/poi/extractor/g;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method
