.class public final synthetic Lorg/apache/poi/poifs/crypt/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljavax/crypto/SecretKey;


# direct methods
.method public synthetic constructor <init>(Ljavax/crypto/SecretKey;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/apache/poi/poifs/crypt/b;->a:I

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/b;->b:Ljavax/crypto/SecretKey;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lorg/apache/poi/poifs/crypt/b;->a:I

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/b;->b:Ljavax/crypto/SecretKey;

    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method
