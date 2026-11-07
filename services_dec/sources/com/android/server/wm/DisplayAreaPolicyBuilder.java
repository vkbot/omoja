package com.android.server.wm;

import com.android.server.policy.WindowManagerPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.function.ToIntFunction;

/* JADX INFO: loaded from: classes2.dex */
class DisplayAreaPolicyBuilder {
    private final ArrayList<Feature> mFeatures = new ArrayList<>();

    DisplayAreaPolicyBuilder() {
    }

    static class Feature {
        private final int mId;
        private final String mName;
        private final boolean[] mWindowLayers;

        private Feature(String name, int id, boolean[] windowLayers) {
            this.mName = name;
            this.mId = id;
            this.mWindowLayers = windowLayers;
        }

        public int getId() {
            return this.mId;
        }

        public String toString() {
            return "Feature(\"" + this.mName + "\", " + this.mId + '}';
        }

        static class Builder {
            private final int mId;
            private final boolean[] mLayers;
            private final String mName;
            private final WindowManagerPolicy mPolicy;

            Builder(WindowManagerPolicy policy, String name, int id) {
                this.mPolicy = policy;
                this.mName = name;
                this.mId = id;
                this.mLayers = new boolean[policy.getMaxWindowLayer()];
            }

            Builder all() {
                Arrays.fill(this.mLayers, true);
                return this;
            }

            Builder and(int... types) {
                for (int type : types) {
                    set(type, true);
                }
                return this;
            }

            Builder except(int... types) {
                for (int type : types) {
                    set(type, false);
                }
                return this;
            }

            Builder upTo(int typeInclusive) {
                int max = layerFromType(typeInclusive, false);
                for (int i = 0; i < max; i++) {
                    this.mLayers[i] = true;
                }
                set(typeInclusive, true);
                return this;
            }

            Feature build() {
                return new Feature(this.mName, this.mId, (boolean[]) this.mLayers.clone());
            }

            private void set(int type, boolean value) {
                this.mLayers[layerFromType(type, true)] = value;
                if (type == 2038) {
                    this.mLayers[layerFromType(type, true)] = value;
                    this.mLayers[layerFromType(2003, false)] = value;
                    this.mLayers[layerFromType(2006, false)] = value;
                    this.mLayers[layerFromType(2010, false)] = value;
                }
            }

            private int layerFromType(int type, boolean internalWindows) {
                return this.mPolicy.getWindowLayerFromTypeLw(type, internalWindows);
            }
        }
    }

    static class Result extends DisplayAreaPolicy {
        private static final int LEAF_TYPE_IME_CONTAINERS = 2;
        private static final int LEAF_TYPE_TASK_CONTAINERS = 1;
        private static final int LEAF_TYPE_TOKENS = 0;
        private final DisplayArea.Tokens[] mAreaForLayer;
        private final Map<Feature, List<DisplayArea<? extends WindowContainer>>> mAreas;
        private final ArrayList<Feature> mFeatures;
        private final int mMaxWindowLayer;

        Result(WindowManagerService wmService, DisplayContent content, DisplayArea.Root root, DisplayArea<? extends WindowContainer> imeContainer, List<TaskDisplayArea> taskDisplayAreas, ArrayList<Feature> features) {
            super(wmService, content, root, imeContainer, taskDisplayAreas);
            int maxWindowLayer = this.mWmService.mPolicy.getMaxWindowLayer();
            this.mMaxWindowLayer = maxWindowLayer;
            this.mAreaForLayer = new DisplayArea.Tokens[maxWindowLayer];
            this.mFeatures = features;
            this.mAreas = new HashMap(features.size());
            for (int i = 0; i < this.mFeatures.size(); i++) {
                this.mAreas.put(this.mFeatures.get(i), new ArrayList());
            }
        }

        @Override // com.android.server.wm.DisplayAreaPolicy
        public void attachDisplayAreas() {
            PendingArea[] areaForLayer = new PendingArea[this.mMaxWindowLayer];
            PendingArea root = new PendingArea(null, 0, null);
            Arrays.fill(areaForLayer, root);
            int size = this.mFeatures.size();
            for (int i = 0; i < size; i++) {
                PendingArea featureArea = null;
                for (int layer = 0; layer < this.mMaxWindowLayer; layer++) {
                    Feature feature = this.mFeatures.get(i);
                    if (feature.mWindowLayers[layer]) {
                        if (featureArea == null || featureArea.mParent != areaForLayer[layer]) {
                            featureArea = new PendingArea(feature, layer, areaForLayer[layer]);
                            areaForLayer[layer].mChildren.add(featureArea);
                        }
                        areaForLayer[layer] = featureArea;
                    } else {
                        featureArea = null;
                    }
                }
            }
            PendingArea leafArea = null;
            int leafType = 0;
            for (int layer2 = 0; layer2 < this.mMaxWindowLayer; layer2++) {
                int type = typeOfLayer(this.mWmService.mPolicy, layer2);
                if (leafArea == null || leafArea.mParent != areaForLayer[layer2] || type != leafType) {
                    leafArea = new PendingArea(null, layer2, areaForLayer[layer2]);
                    areaForLayer[layer2].mChildren.add(leafArea);
                    leafType = type;
                    if (leafType == 1) {
                        addTaskDisplayAreasToLayer(areaForLayer[layer2], layer2);
                    } else if (leafType == 2) {
                        leafArea.mExisting = this.mImeContainer;
                    }
                }
                leafArea.mMaxLayer = layer2;
            }
            root.computeMaxLayer();
            root.instantiateChildren(this.mRoot, this.mAreaForLayer, 0, this.mAreas);
        }

        private void addTaskDisplayAreasToLayer(PendingArea parentPendingArea, int layer) {
            int count = this.mTaskDisplayAreas.size();
            for (int i = 0; i < count; i++) {
                PendingArea leafArea = new PendingArea(null, layer, parentPendingArea);
                leafArea.mExisting = this.mTaskDisplayAreas.get(i);
                leafArea.mMaxLayer = layer;
                parentPendingArea.mChildren.add(leafArea);
            }
        }

        @Override // com.android.server.wm.DisplayAreaPolicy
        public void addWindow(WindowToken token) {
            DisplayArea.Tokens area = findAreaForToken(token);
            area.addChild(token);
        }

        DisplayArea.Tokens findAreaForToken(WindowToken token) {
            int windowLayerFromType = token.getWindowLayerFromType();
            if (windowLayerFromType == 2) {
                windowLayerFromType++;
            } else if (token.mRoundedCornerOverlay) {
                windowLayerFromType = this.mMaxWindowLayer - 1;
            }
            return this.mAreaForLayer[windowLayerFromType];
        }

        public List<DisplayArea<? extends WindowContainer>> getDisplayAreas(Feature feature) {
            return this.mAreas.get(feature);
        }

        private static int typeOfLayer(WindowManagerPolicy policy, int layer) {
            if (layer == 2) {
                return 1;
            }
            if (layer == policy.getWindowLayerFromTypeLw(2011) || layer == policy.getWindowLayerFromTypeLw(2012)) {
                return 2;
            }
            return 0;
        }
    }

    DisplayAreaPolicyBuilder addFeature(Feature feature) {
        this.mFeatures.add(feature);
        return this;
    }

    protected List<Feature> getFeatures() {
        return this.mFeatures;
    }

    Result build(WindowManagerService wmService, DisplayContent content, DisplayArea.Root root, DisplayArea<? extends WindowContainer> imeContainer, List<TaskDisplayArea> taskDisplayAreas) {
        return new Result(wmService, content, root, imeContainer, taskDisplayAreas, new ArrayList(this.mFeatures));
    }

    static class PendingArea {
        final ArrayList<PendingArea> mChildren = new ArrayList<>();
        DisplayArea mExisting;
        final Feature mFeature;
        int mMaxLayer;
        final int mMinLayer;
        final PendingArea mParent;

        PendingArea(Feature feature, int minLayer, PendingArea parent) {
            this.mMinLayer = minLayer;
            this.mFeature = feature;
            this.mParent = parent;
        }

        int computeMaxLayer() {
            for (int i = 0; i < this.mChildren.size(); i++) {
                this.mMaxLayer = Math.max(this.mMaxLayer, this.mChildren.get(i).computeMaxLayer());
            }
            int i2 = this.mMaxLayer;
            return i2;
        }

        void instantiateChildren(DisplayArea<DisplayArea> parent, DisplayArea.Tokens[] areaForLayer, int level, Map<Feature, List<DisplayArea<? extends WindowContainer>>> areas) {
            this.mChildren.sort(Comparator.comparingInt(new ToIntFunction() { // from class: com.android.server.wm.-$$Lambda$DisplayAreaPolicyBuilder$PendingArea$3ZZ3VghJFXPK9kfKPSTf_9BJZCQ
                @Override // java.util.function.ToIntFunction
                public final int applyAsInt(Object obj) {
                    return ((DisplayAreaPolicyBuilder.PendingArea) obj).mMinLayer;
                }
            }));
            for (int i = 0; i < this.mChildren.size(); i++) {
                PendingArea pendingArea = this.mChildren.get(i);
                DisplayArea displayAreaCreateArea = pendingArea.createArea(parent, areaForLayer);
                parent.addChild(displayAreaCreateArea, Integer.MAX_VALUE);
                Feature feature = this.mFeature;
                if (feature != null) {
                    areas.get(feature).add(displayAreaCreateArea);
                }
                pendingArea.instantiateChildren(displayAreaCreateArea, areaForLayer, level + 1, areas);
            }
        }

        private DisplayArea createArea(DisplayArea<DisplayArea> parent, DisplayArea.Tokens[] areaForLayer) {
            DisplayArea.Type type;
            DisplayArea displayArea = this.mExisting;
            if (displayArea != null) {
                return displayArea;
            }
            if (this.mMinLayer > 2) {
                type = DisplayArea.Type.ABOVE_TASKS;
            } else if (this.mMaxLayer < 2) {
                type = DisplayArea.Type.BELOW_TASKS;
            } else {
                type = DisplayArea.Type.ANY;
            }
            if (this.mFeature != null) {
                return new DisplayArea(parent.mWmService, type, this.mFeature.mName + ":" + this.mMinLayer + ":" + this.mMaxLayer, this.mFeature.mId);
            }
            DisplayArea.Tokens leaf = new DisplayArea.Tokens(parent.mWmService, type, "Leaf:" + this.mMinLayer + ":" + this.mMaxLayer);
            for (int i = this.mMinLayer; i <= this.mMaxLayer; i++) {
                areaForLayer[i] = leaf;
            }
            return leaf;
        }
    }
}
