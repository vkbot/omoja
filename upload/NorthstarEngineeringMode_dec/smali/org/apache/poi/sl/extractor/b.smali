.class public final synthetic Lorg/apache/poi/sl/extractor/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/sl/extractor/b;->a:I

    iput-object p1, p0, Lorg/apache/poi/sl/extractor/b;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/sl/extractor/b;->a:I

    iget-object p0, p0, Lorg/apache/poi/sl/extractor/b;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
