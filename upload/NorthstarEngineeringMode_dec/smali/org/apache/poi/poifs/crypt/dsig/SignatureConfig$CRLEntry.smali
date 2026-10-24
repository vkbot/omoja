.class public Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CRLEntry"
.end annotation


# instance fields
.field private final certCN:Ljava/lang/String;

.field private final crlBytes:[B

.field private final crlURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;->crlURL:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;->certCN:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;->crlBytes:[B

    return-void
.end method


# virtual methods
.method public getCertCN()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;->certCN:Ljava/lang/String;

    return-object p0
.end method

.method public getCrlBytes()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;->crlBytes:[B

    return-object p0
.end method

.method public getCrlURL()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig$CRLEntry;->crlURL:Ljava/lang/String;

    return-object p0
.end method
