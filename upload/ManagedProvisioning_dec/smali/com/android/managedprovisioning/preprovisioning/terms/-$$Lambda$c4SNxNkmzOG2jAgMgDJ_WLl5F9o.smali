.class public final synthetic Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$c4SNxNkmzOG2jAgMgDJ_WLl5F9o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/managedprovisioning/common/StoreUtils$TextFileReader;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$c4SNxNkmzOG2jAgMgDJ_WLl5F9o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$c4SNxNkmzOG2jAgMgDJ_WLl5F9o;

    invoke-direct {v0}, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$c4SNxNkmzOG2jAgMgDJ_WLl5F9o;-><init>()V

    sput-object v0, Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$c4SNxNkmzOG2jAgMgDJ_WLl5F9o;->INSTANCE:Lcom/android/managedprovisioning/preprovisioning/terms/-$$Lambda$c4SNxNkmzOG2jAgMgDJ_WLl5F9o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/android/managedprovisioning/common/StoreUtils;->readString(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
