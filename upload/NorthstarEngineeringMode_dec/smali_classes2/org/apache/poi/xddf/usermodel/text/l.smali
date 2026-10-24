.class public final synthetic Lorg/apache/poi/xddf/usermodel/text/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/LinkedList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/xddf/usermodel/text/l;->a:I

    iput-object p1, p0, Lorg/apache/poi/xddf/usermodel/text/l;->b:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lorg/apache/poi/xddf/usermodel/text/l;->a:I

    iget-object p0, p0, Lorg/apache/poi/xddf/usermodel/text/l;->b:Ljava/util/LinkedList;

    check-cast p1, Lorg/apache/poi/xddf/usermodel/text/XDDFFont;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method
