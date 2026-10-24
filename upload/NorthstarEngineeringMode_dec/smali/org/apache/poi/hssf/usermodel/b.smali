.class public final synthetic Lorg/apache/poi/hssf/usermodel/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lorg/apache/poi/hssf/usermodel/b;->a:I

    iput-object p1, p0, Lorg/apache/poi/hssf/usermodel/b;->b:Ljava/lang/Object;

    iput-object p2, p0, Lorg/apache/poi/hssf/usermodel/b;->c:Ljava/lang/Object;

    iput-object p4, p0, Lorg/apache/poi/hssf/usermodel/b;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lorg/apache/poi/hssf/usermodel/b;->a:I

    iget-object v1, p0, Lorg/apache/poi/hssf/usermodel/b;->d:Ljava/lang/Object;

    iget-object v2, p0, Lorg/apache/poi/hssf/usermodel/b;->c:Ljava/lang/Object;

    iget-object p0, p0, Lorg/apache/poi/hssf/usermodel/b;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Ljava/lang/String;

    check-cast v2, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    check-cast p1, Lm5/o0$a;

    const/4 v0, 0x1

    invoke-static {v2, p0, v0}, Lm5/o0;->d0(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {p1}, Lm5/o0$a;->D()Lm5/z0;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Lm5/z0;->G(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0, v3, v0}, Lm5/o0;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, p1}, Lm5/o0;->z(Ljava/lang/String;Ljava/lang/String;Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lm5/o0;->N(Lm5/o0$a;)Lorg/w3c/dom/Document;

    move-result-object v2

    check-cast v2, Lm5/o0$a;

    invoke-static {p0, v3, v2}, Lm5/o0;->D(Ljava/lang/String;Ljava/lang/String;Lm5/o0$a;)Lorg/w3c/dom/Attr;

    move-result-object v2

    move-object p0, v2

    check-cast p0, Lm5/o0$a;

    invoke-static {p1, p0}, Lm5/o0;->B(Lm5/o0$a;Lm5/o0$a;)Lorg/w3c/dom/Node;

    :cond_0
    check-cast v2, Lm5/o0$a;

    invoke-static {v0, v2}, Lm5/o0;->T(Ljava/lang/String;Lm5/o0$a;)V

    invoke-static {v1, v2}, Lm5/o0;->S(Ljava/lang/String;Lm5/o0$a;)V

    return-void

    :pswitch_0
    check-cast p0, Lorg/apache/poi/hssf/record/EscherAggregate;

    check-cast v2, Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;

    check-cast v1, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    check-cast p1, Lorg/apache/poi/ddf/EscherContainerRecord;

    invoke-static {p0, v2, v1, p1}, Lorg/apache/poi/hssf/usermodel/HSSFShapeFactory;->a(Lorg/apache/poi/hssf/record/EscherAggregate;Lorg/apache/poi/hssf/usermodel/HSSFShapeGroup;Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/ddf/EscherContainerRecord;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
