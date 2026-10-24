.class public Lmega/car/config/CarPropertyProvider;
.super Ljava/lang/Object;
.source "CarPropertyProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/config/CarPropertyProvider$Inject;
    }
.end annotation


# static fields
.field private static final CAR_PROPERTY_ANNOTATION_DEFINE:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmega/car/annotation/PropertyDefine;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAR_PROPERTY_CONFIGS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmega/car/hardware/CarPropertyConfig<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final DOMAIN_CONFIG_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmega/car/annotation/DomainDefine;",
            ">;"
        }
    .end annotation
.end field

.field public static final IGNORE_TOPIC:Ljava/lang/String; = "@null"

.field private static final INJECT_CLASS:Ljava/lang/String; = "mega.car.config.ConfigInject"

.field private static final MGR_ID_TO_NAME_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MGR_NAME_TO_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERM_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROP_ID_TO_NAME_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROP_NAME_TO_ID_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SOURCE_PROP_ID_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field public static final TOPIC_SET_SUFFIX:Ljava/lang/String; = "/Set"

.field private static final VEHICLE_AREA_VALUE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    const-class v0, Lmega/car/config/CarPropertyProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmega/car/config/CarPropertyProvider;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmega/car/config/CarPropertyProvider;->CAR_PROPERTY_CONFIGS:Landroid/util/SparseArray;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmega/car/config/CarPropertyProvider;->CAR_PROPERTY_ANNOTATION_DEFINE:Landroid/util/SparseArray;

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmega/car/config/CarPropertyProvider;->DOMAIN_CONFIG_MAP:Landroid/util/SparseArray;

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmega/car/config/CarPropertyProvider;->MGR_ID_TO_NAME_MAP:Landroid/util/SparseArray;

    .line 40
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmega/car/config/CarPropertyProvider;->PERM_MAP:Landroid/util/SparseArray;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmega/car/config/CarPropertyProvider;->MGR_NAME_TO_ID_MAP:Ljava/util/HashMap;

    .line 42
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmega/car/config/CarPropertyProvider;->PROP_ID_TO_NAME_MAP:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmega/car/config/CarPropertyProvider;->PROP_NAME_TO_ID_MAP:Ljava/util/Map;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lmega/car/config/CarPropertyProvider;->SOURCE_PROP_ID_MAP:Landroid/util/SparseArray;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmega/car/config/CarPropertyProvider;->VEHICLE_AREA_VALUE_MAP:Ljava/util/Map;

    .line 48
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lmega/car/config/Ecu;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lmega/car/config/KeyInput;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lmega/car/config/Power;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lmega/car/config/QNX;

    aput-object v2, v0, v1

    .line 54
    .local v0, "coresConfig":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0}, Lmega/car/config/CarPropertyProvider;->parseClasses([Ljava/lang/Class;)V

    .line 57
    :try_start_0
    const-string v1, "mega.car.config.ConfigInject"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 58
    .local v1, "injectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lmega/car/config/CarPropertyProvider$Inject;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmega/car/config/CarPropertyProvider$Inject;

    .line 60
    .local v2, "configProvider":Lmega/car/config/CarPropertyProvider$Inject;
    invoke-interface {v2}, Lmega/car/config/CarPropertyProvider$Inject;->getInjectClass()[Ljava/lang/Class;

    move-result-object v3

    .line 61
    .local v3, "configClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v3}, Lmega/car/config/CarPropertyProvider;->parseClasses([Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "injectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "configProvider":Lmega/car/config/CarPropertyProvider$Inject;
    .end local v3    # "configClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 66
    .end local v0    # "coresConfig":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllProperties()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lmega/car/hardware/CarPropertyConfig<",
            "*>;>;"
        }
    .end annotation

    .line 143
    sget-object v0, Lmega/car/config/CarPropertyProvider;->CAR_PROPERTY_CONFIGS:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public static getAreaValueByName(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "areaName"    # Ljava/lang/String;

    .line 215
    sget-object v0, Lmega/car/config/CarPropertyProvider;->VEHICLE_AREA_VALUE_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getDomainAnnotationMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lmega/car/annotation/DomainDefine;",
            ">;"
        }
    .end annotation

    .line 153
    sget-object v0, Lmega/car/config/CarPropertyProvider;->DOMAIN_CONFIG_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissionForPropId(I)Ljava/lang/String;
    .locals 2
    .param p0, "propId"    # I

    .line 174
    sget-object v0, Lmega/car/config/CarPropertyProvider;->PERM_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 175
    .local v0, "permission":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    return-object v0

    .line 178
    :cond_0
    invoke-static {p0}, Lmega/car/hardware/CarPropertyValue;->decodeMgrId(I)I

    move-result v1

    invoke-static {v1}, Lmega/car/config/CarPropertyProvider;->mgrIdToPerm(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPropIdByName(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "propName"    # Ljava/lang/String;

    .line 211
    sget-object v0, Lmega/car/config/CarPropertyProvider;->PROP_NAME_TO_ID_MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getPropIdBySource(I)Ljava/util/Set;
    .locals 2
    .param p0, "source"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 183
    sget-object v0, Lmega/car/config/CarPropertyProvider;->SOURCE_PROP_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 184
    .local v0, "idSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 185
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1

    .line 187
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static getPropIdToNameMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 207
    sget-object v0, Lmega/car/config/CarPropertyProvider;->PROP_ID_TO_NAME_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public static getProperties(I)Landroid/util/SparseArray;
    .locals 4
    .param p0, "communicateType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lmega/car/hardware/CarPropertyConfig<",
            "*>;>;"
        }
    .end annotation

    .line 160
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 161
    .local v0, "properties":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lmega/car/hardware/CarPropertyConfig<*>;>;"
    invoke-static {}, Lmega/car/config/CarPropertyProvider;->getAllProperties()Landroid/util/SparseArray;

    move-result-object v1

    .line 162
    .local v1, "allProperties":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lmega/car/hardware/CarPropertyConfig<*>;>;"
    invoke-static {p0}, Lmega/car/config/CarPropertyProvider;->getPropIdBySource(I)Ljava/util/Set;

    move-result-object v2

    .line 163
    .local v2, "propIdBySource":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Lmega/car/config/-$$Lambda$CarPropertyProvider$wFQ01emFJFzsDYYq4VxzPpbf1ag;

    invoke-direct {v3, v0, v1}, Lmega/car/config/-$$Lambda$CarPropertyProvider$wFQ01emFJFzsDYYq4VxzPpbf1ag;-><init>(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 166
    return-object v0
.end method

.method public static getPropertyAnnotationMap()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lmega/car/annotation/PropertyDefine;",
            ">;"
        }
    .end annotation

    .line 148
    sget-object v0, Lmega/car/config/CarPropertyProvider;->CAR_PROPERTY_ANNOTATION_DEFINE:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getProperties$0(Landroid/util/SparseArray;Landroid/util/SparseArray;Ljava/lang/Integer;)V
    .locals 2
    .param p0, "properties"    # Landroid/util/SparseArray;
    .param p1, "allProperties"    # Landroid/util/SparseArray;
    .param p2, "id"    # Ljava/lang/Integer;

    .line 164
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmega/car/hardware/CarPropertyConfig;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 165
    return-void
.end method

.method public static mgrIdToName(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .line 195
    sget-object v0, Lmega/car/config/CarPropertyProvider;->MGR_ID_TO_NAME_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static mgrIdToPerm(I)Ljava/lang/String;
    .locals 1
    .param p0, "mgrId"    # I

    .line 170
    sget-object v0, Lmega/car/config/CarPropertyProvider;->PERM_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static mgrNameToId(Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 191
    sget-object v0, Lmega/car/config/CarPropertyProvider;->MGR_NAME_TO_ID_MAP:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static ofConfig(ILmega/car/annotation/PropertyDefine;)Lmega/car/hardware/CarPropertyConfig;
    .locals 2
    .param p0, "propertyId"    # I
    .param p1, "propertyDefine"    # Lmega/car/annotation/PropertyDefine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lmega/car/annotation/PropertyDefine;",
            ")",
            "Lmega/car/hardware/CarPropertyConfig<",
            "TT;>;"
        }
    .end annotation

    .line 122
    nop

    .line 124
    invoke-interface {p1}, Lmega/car/annotation/PropertyDefine;->type()Ljava/lang/Class;

    move-result-object v0

    .line 123
    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lmega/car/hardware/CarPropertyConfig;->newBuilder(Ljava/lang/Class;II)Lmega/car/hardware/CarPropertyConfig$Builder;

    move-result-object v0

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmega/car/hardware/CarPropertyConfig$Builder;->addArea(I)Lmega/car/hardware/CarPropertyConfig$Builder;

    move-result-object v0

    .line 128
    invoke-interface {p1}, Lmega/car/annotation/PropertyDefine;->changeMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lmega/car/hardware/CarPropertyConfig$Builder;->setChangeMode(I)Lmega/car/hardware/CarPropertyConfig$Builder;

    move-result-object v0

    .line 129
    .local v0, "config":Lmega/car/hardware/CarPropertyConfig$Builder;, "Lmega/car/hardware/CarPropertyConfig$Builder<*>;"
    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyConfig$Builder;->build()Lmega/car/hardware/CarPropertyConfig;

    move-result-object v1

    return-object v1
.end method

.method private static parseClasses([Ljava/lang/Class;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 69
    .local p0, "classSet":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v1, p0

    const-string v2, "failed access "

    array-length v3, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_7

    aget-object v6, v1, v5

    .line 70
    .local v6, "domain":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lmega/car/annotation/DomainDefine;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lmega/car/annotation/DomainDefine;

    .line 71
    .local v7, "domainDefine":Lmega/car/annotation/DomainDefine;
    if-nez v7, :cond_0

    .line 72
    sget-object v0, Lmega/car/config/CarPropertyProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "empty config in class : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lmega/log/MLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    goto/16 :goto_5

    .line 75
    :cond_0
    sget-object v0, Lmega/car/config/CarPropertyProvider;->MGR_ID_TO_NAME_MAP:Landroid/util/SparseArray;

    invoke-interface {v7}, Lmega/car/annotation/DomainDefine;->domainId()I

    move-result v8

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 76
    sget-object v0, Lmega/car/config/CarPropertyProvider;->MGR_NAME_TO_ID_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lmega/car/annotation/DomainDefine;->domainId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lmega/car/config/CarPropertyProvider;->PERM_MAP:Landroid/util/SparseArray;

    invoke-interface {v7}, Lmega/car/annotation/DomainDefine;->domainId()I

    move-result v8

    invoke-interface {v7}, Lmega/car/annotation/DomainDefine;->permission()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 78
    sget-object v0, Lmega/car/config/CarPropertyProvider;->DOMAIN_CONFIG_MAP:Landroid/util/SparseArray;

    invoke-interface {v7}, Lmega/car/annotation/DomainDefine;->domainId()I

    move-result v8

    invoke-virtual {v0, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_6

    aget-object v11, v8, v10

    .line 80
    .local v11, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    goto/16 :goto_4

    .line 83
    :cond_1
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    goto/16 :goto_4

    .line 87
    :cond_2
    const/4 v12, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 88
    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 89
    .local v0, "propId":I
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v13

    .line 90
    .local v13, "domainTypeName":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "#"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 91
    .local v14, "propName":Ljava/lang/String;
    sget-object v15, Lmega/car/config/CarPropertyProvider;->PROP_ID_TO_NAME_MAP:Landroid/util/SparseArray;

    invoke-virtual {v15, v0, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v15, Lmega/car/config/CarPropertyProvider;->PROP_NAME_TO_ID_MAP:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v15, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    nop

    .end local v0    # "propId":I
    .end local v13    # "domainTypeName":Ljava/lang/String;
    .end local v14    # "propName":Ljava/lang/String;
    goto :goto_2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lmega/car/config/CarPropertyProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_2
    const-class v0, Lmega/car/annotation/PropertyDefine;

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lmega/car/annotation/PropertyDefine;

    .line 97
    .local v4, "propertyDefine":Lmega/car/annotation/PropertyDefine;
    if-nez v4, :cond_3

    .line 98
    goto :goto_4

    .line 101
    :cond_3
    :try_start_1
    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 102
    .local v0, "propId":I
    sget-object v12, Lmega/car/config/CarPropertyProvider;->CAR_PROPERTY_ANNOTATION_DEFINE:Landroid/util/SparseArray;

    invoke-virtual {v12, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    sget-object v12, Lmega/car/config/CarPropertyProvider;->CAR_PROPERTY_CONFIGS:Landroid/util/SparseArray;

    invoke-static {v0, v4}, Lmega/car/config/CarPropertyProvider;->ofConfig(ILmega/car/annotation/PropertyDefine;)Lmega/car/hardware/CarPropertyConfig;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    invoke-interface {v4}, Lmega/car/annotation/PropertyDefine;->permission()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 105
    sget-object v12, Lmega/car/config/CarPropertyProvider;->PERM_MAP:Landroid/util/SparseArray;

    invoke-interface {v4}, Lmega/car/annotation/PropertyDefine;->permission()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v0, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    :cond_4
    invoke-interface {v4}, Lmega/car/annotation/PropertyDefine;->source()I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    .line 108
    invoke-interface {v4}, Lmega/car/annotation/PropertyDefine;->source()I

    move-result v12

    invoke-static {v12, v0}, Lmega/car/config/CarPropertyProvider;->putSourceId(II)V

    goto :goto_3

    .line 110
    :cond_5
    invoke-interface {v7}, Lmega/car/annotation/DomainDefine;->source()I

    move-result v12

    invoke-static {v12, v0}, Lmega/car/config/CarPropertyProvider;->putSourceId(II)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    .end local v0    # "propId":I
    :goto_3
    goto :goto_4

    .line 112
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v12, Lmega/car/config/CarPropertyProvider;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v4    # "propertyDefine":Lmega/car/annotation/PropertyDefine;
    .end local v11    # "field":Ljava/lang/reflect/Field;
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 69
    .end local v6    # "domain":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "domainDefine":Lmega/car/annotation/DomainDefine;
    :cond_6
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 117
    :cond_7
    return-void
.end method

.method public static propIdToName(I)Ljava/lang/String;
    .locals 3
    .param p0, "propId"    # I

    .line 199
    sget-object v0, Lmega/car/config/CarPropertyProvider;->PROP_ID_TO_NAME_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 201
    return-object v0

    .line 203
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static putSourceId(II)V
    .locals 2
    .param p0, "source"    # I
    .param p1, "propId"    # I

    .line 133
    sget-object v0, Lmega/car/config/CarPropertyProvider;->SOURCE_PROP_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 134
    .local v0, "propIdSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_0

    .line 135
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    move-object v0, v1

    .line 136
    sget-object v1, Lmega/car/config/CarPropertyProvider;->SOURCE_PROP_ID_MAP:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 138
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method
