.class public final Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;
.super Lorg/apache/commons/io/build/AbstractOriginSupplier;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/io/monitor/FileAlterationObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/io/build/AbstractOriginSupplier<",
        "Lorg/apache/commons/io/monitor/FileAlterationObserver;",
        "Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private fileFilter:Ljava/io/FileFilter;

.field private ioCase:Lorg/apache/commons/io/IOCase;

.field private rootEntry:Lorg/apache/commons/io/monitor/FileEntry;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/io/monitor/FileAlterationObserver$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$200(Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;)Lorg/apache/commons/io/monitor/FileEntry;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->checkOriginFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$400(Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;)Ljava/io/FileFilter;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->fileFilter:Ljava/io/FileFilter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;)Lorg/apache/commons/io/IOCase;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->ioCase:Lorg/apache/commons/io/IOCase;

    .line 2
    .line 3
    return-object p0
.end method

.method private checkOriginFile()Ljava/io/File;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractOriginSupplier;->checkOrigin()Lorg/apache/commons/io/build/AbstractOrigin;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/apache/commons/io/build/AbstractOrigin;->getFile()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->get()Lorg/apache/commons/io/monitor/FileAlterationObserver;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/apache/commons/io/monitor/FileAlterationObserver;
    .locals 2

    .line 1
    new-instance v0, Lorg/apache/commons/io/monitor/FileAlterationObserver;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lorg/apache/commons/io/monitor/FileAlterationObserver;-><init>(Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;Lorg/apache/commons/io/monitor/FileAlterationObserver$1;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setFileFilter(Ljava/io/FileFilter;)Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->fileFilter:Ljava/io/FileFilter;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setIOCase(Lorg/apache/commons/io/IOCase;)Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->ioCase:Lorg/apache/commons/io/IOCase;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;

    .line 8
    .line 9
    return-object p1
.end method

.method public setRootEntry(Lorg/apache/commons/io/monitor/FileEntry;)Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;->rootEntry:Lorg/apache/commons/io/monitor/FileEntry;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/io/build/AbstractSupplier;->asThis()Lorg/apache/commons/io/build/AbstractSupplier;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/apache/commons/io/monitor/FileAlterationObserver$Builder;

    .line 8
    .line 9
    return-object p1
.end method
