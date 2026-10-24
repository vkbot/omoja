.class public final synthetic Lorg/apache/poi/poifs/crypt/dsig/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;

.field public final synthetic b:Lorg/w3c/dom/traversal/DocumentTraversal;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;Lorg/w3c/dom/traversal/DocumentTraversal;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/i;->a:Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/i;->b:Lorg/w3c/dom/traversal/DocumentTraversal;

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/dsig/i;->c:Ljava/util/Map;

    iput-object p4, p0, Lorg/apache/poi/poifs/crypt/dsig/i;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/i;->d:Ljava/util/Map;

    check-cast p1, Lorg/w3c/dom/Element;

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/i;->a:Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/i;->b:Lorg/w3c/dom/traversal/DocumentTraversal;

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/i;->c:Ljava/util/Map;

    invoke-static {v1, v2, p0, v0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;->c(Lorg/apache/poi/poifs/crypt/dsig/SignatureMarshalDefaultListener;Lorg/w3c/dom/traversal/DocumentTraversal;Ljava/util/Map;Ljava/util/Map;Lorg/w3c/dom/Element;)V

    return-void
.end method
