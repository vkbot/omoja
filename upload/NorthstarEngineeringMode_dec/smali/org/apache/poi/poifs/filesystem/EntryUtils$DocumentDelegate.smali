.class Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/poifs/filesystem/EntryUtils$POIDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/poifs/filesystem/EntryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentDelegate"
.end annotation


# instance fields
.field final doc:Lorg/apache/poi/poifs/filesystem/DocumentEntry;


# direct methods
.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;->doc:Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    return-void
.end method

.method private static isEqual(Lorg/apache/poi/poifs/filesystem/DocumentInputStream;Lorg/apache/poi/poifs/filesystem/DocumentInputStream;)Z
    .locals 7

    const/16 v0, 0x1000

    new-array v1, v0, [B

    new-array v0, v0, [B

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p1, v0, v2, v3}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->readFully([BII)V

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    aget-byte v5, v1, v4

    aget-byte v6, v0, v4

    if-eq v5, v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->read()I

    move-result p0
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p0, :cond_3

    const/4 v2, 0x1

    :catch_0
    :cond_3
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;->doc:Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;->doc:Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    invoke-interface {v2}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    :try_start_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;->doc:Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    invoke-direct {v0, p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    :try_end_0
    .catch Lorg/apache/poi/hpsf/NoPropertySetStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p0, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    iget-object p1, p1, Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;->doc:Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream(Ljava/io/InputStream;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lorg/apache/poi/hpsf/PropertySet;->isPropertySetStream(Ljava/io/InputStream;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Lorg/apache/poi/hpsf/PropertySetFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object p1

    invoke-static {p0}, Lorg/apache/poi/hpsf/PropertySetFactory;->create(Ljava/io/InputStream;)Lorg/apache/poi/hpsf/PropertySet;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/apache/poi/hpsf/PropertySet;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_4
    .catch Lorg/apache/poi/hpsf/NoPropertySetStreamException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return p1

    :catch_0
    move-exception p0

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_0

    :cond_3
    :try_start_5
    invoke-static {v0, p0}, Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;->isEqual(Lorg/apache/poi/poifs/filesystem/DocumentInputStream;Lorg/apache/poi/poifs/filesystem/DocumentInputStream;)Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_7
    .catch Lorg/apache/poi/hpsf/NoPropertySetStreamException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    return p1

    :goto_0
    :try_start_8
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_9
    invoke-virtual {p0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p0

    :try_start_a
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_2
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception p1

    :try_start_c
    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    :try_start_d
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p1
    :try_end_d
    .catch Lorg/apache/poi/hpsf/NoPropertySetStreamException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    :goto_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/filesystem/EntryUtils$DocumentDelegate;->doc:Lorg/apache/poi/poifs/filesystem/DocumentEntry;

    invoke-interface {p0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method
