.class Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NamespaceImpl"
.end annotation


# instance fields
.field private final namespaceURI:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->prefix:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->namespaceURI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNamespaceURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->namespaceURI:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/marshallers/PackagePropertiesMarshaller$NamespaceImpl;->prefix:Ljava/lang/String;

    return-object p0
.end method
