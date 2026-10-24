.class public Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/macros/Module;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/macros/VBAMacroReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModuleImpl"
.end annotation


# instance fields
.field buf:[B

.field charset:Ljava/nio/charset/Charset;

.field moduleType:Lorg/apache/poi/poifs/macros/Module$ModuleType;

.field offset:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public geModuleType()Lorg/apache/poi/poifs/macros/Module$ModuleType;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->moduleType:Lorg/apache/poi/poifs/macros/Module$ModuleType;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->buf:[B

    iget-object p0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleImpl;->buf:[B

    return-void
.end method
