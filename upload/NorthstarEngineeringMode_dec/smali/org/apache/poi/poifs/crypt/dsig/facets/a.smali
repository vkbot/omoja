.class public final synthetic Lorg/apache/poi/poifs/crypt/dsig/facets/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Ljavax/xml/crypto/dsig/dom/DOMSignContext;


# direct methods
.method public synthetic constructor <init>(Ljavax/xml/crypto/dsig/dom/DOMSignContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/a;->a:Ljavax/xml/crypto/dsig/dom/DOMSignContext;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/facets/a;->a:Ljavax/xml/crypto/dsig/dom/DOMSignContext;

    invoke-static {p0, p1, p2}, Lorg/apache/poi/poifs/crypt/dsig/facets/KeyInfoSignatureFacet;->a(Ljavax/xml/crypto/dsig/dom/DOMSignContext;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
