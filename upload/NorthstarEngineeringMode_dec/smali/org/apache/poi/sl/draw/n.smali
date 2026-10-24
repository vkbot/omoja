.class public final synthetic Lorg/apache/poi/sl/draw/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/n;->a:Ljava/util/List;

    iput p2, p0, Lorg/apache/poi/sl/draw/n;->b:I

    iput p3, p0, Lorg/apache/poi/sl/draw/n;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/sl/draw/n;->c:I

    check-cast p1, Ljava/text/AttributedCharacterIterator$Attribute;

    iget-object v1, p0, Lorg/apache/poi/sl/draw/n;->a:Ljava/util/List;

    iget p0, p0, Lorg/apache/poi/sl/draw/n;->b:I

    invoke-static {v1, p0, v0, p1, p2}, Lorg/apache/poi/sl/draw/DrawTextParagraph;->a(Ljava/util/List;IILjava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    return-void
.end method
