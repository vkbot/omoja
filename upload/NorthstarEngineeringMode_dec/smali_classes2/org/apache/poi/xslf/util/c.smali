.class public final synthetic Lorg/apache/poi/xslf/util/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic a:Ljava/util/LinkedList;

.field public final synthetic b:Ljava/util/regex/Pattern;


# direct methods
.method public synthetic constructor <init>(Ljava/util/LinkedList;Ljava/util/regex/Pattern;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/util/c;->a:Ljava/util/LinkedList;

    iput-object p2, p0, Lorg/apache/poi/xslf/util/c;->b:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xslf/util/c;->a:Ljava/util/LinkedList;

    iget-object p0, p0, Lorg/apache/poi/xslf/util/c;->b:Ljava/util/regex/Pattern;

    invoke-static {v0, p0, p1, p2}, Lorg/apache/poi/xslf/util/PDFFontMapper;->a(Ljava/util/LinkedList;Ljava/util/regex/Pattern;Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
