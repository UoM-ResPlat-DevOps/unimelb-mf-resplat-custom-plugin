package unimelb.mf.resplat.custom.plugin.services;

import arc.mf.plugin.PluginService;
import arc.xml.XmlDoc.Element;
import arc.xml.XmlWriter;

public class SvcTest extends PluginService {

    public static final String SERVICE_NAME = "resplat.test";

    private Interface _defn;

    public SvcTest() {
        _defn = new Interface();
    }

    @Override
    public Access access() {
        return ACCESS_ACCESS;
    }

    @Override
    public Interface definition() {
        return _defn;
    }

    @Override
    public String description() {
        return "Sample plugin service.";
    }

    @Override
    public void execute(Element args, Inputs inputs, Outputs outputs, XmlWriter w) throws Throwable {
        w.add("output", "hello world");
    }

    @Override
    public String name() {
        return SERVICE_NAME;
    }

}
