.class public Lm5/b;
.super Lm5/a1;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Attr;


# direct methods
.method public constructor <init>(Lm5/z0;Ljavax/xml/namespace/QName;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lm5/a1;-><init>(Lm5/z0;II)V

    iput-object p2, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    return-void
.end method


# virtual methods
.method public final C0(Lm5/z0;)Lm5/w1;
    .locals 1

    new-instance v0, Lm5/b;

    iget-object p0, p0, Lm5/w1;->b:Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1, p0}, Lm5/b;-><init>(Lm5/z0;Ljavax/xml/namespace/QName;)V

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lm5/o0;->o(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNextSibling()Lorg/w3c/dom/Node;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOwnerElement()Lorg/w3c/dom/Element;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/schema/c0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/schema/c0;-><init>(I)V

    invoke-static {v0, p0}, Lm5/o0;->V(Ljava/util/function/Function;Lm5/o0$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public final getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DOM Level 3 Not implemented"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSpecified()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lm5/o0;->p(Lm5/o0$a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isId()Z
    .locals 0

    instance-of p0, p0, Lm5/a;

    return p0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p0}, Lm5/o0;->w(Ljava/lang/String;Lm5/o0$a;)V

    return-void
.end method
