.class public Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/draw/EmbeddedExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmbeddedPart"
.end annotation


# instance fields
.field private data:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "[B>;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/function/Supplier;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "[B>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;->data:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setData(Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "[B>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;->data:Ljava/util/function/Supplier;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;->name:Ljava/lang/String;

    return-void
.end method
