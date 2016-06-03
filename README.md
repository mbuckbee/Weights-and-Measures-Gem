
<p align="center">
  <img src="https://app.expeditedaddons.com/weightsandmeasures.png"/>
  
</p>

<h1 align='center'>Weights and Measures</h1>

## Conversational interface to convert between units of measure.

## Requirements

- An API Key from Heroku
    - Add from: https://elements.heroku.com/addons/weightsandmeasures

- Ruby v2.x or greater

## Usage

### Input Parameter Descriptions

| Index       | Name    | Example | Description |
| --------------- | ------- | -------- |--------|
|0|`from_value`|string|The value to convert from (e.g. 10.00)|
|1|`from_type`|string|The type of the value to convert from|
|2|`to_type`|string|The type to convert to (e.g. EUR)|



### Making a Request

```ruby
> require 'weights_and_measures'
=> true

# Note: the 'Controller' here is not a reference to Rails controllers
# but an internal structure, won't interfere with your Rails app and will 
# work fine in a standalone ruby app or another framework

>> wam = WeightsAndMeasures::APIController.new
=> #<WeightsAndMeasures::APIController:0x007ff675238818>

>> wam.lookup("10", "grams", "pounds")
=> #<WeightsAndMeasures::ResultModel:0x007ff6752234b8 @valid=true, @result="0.022046226218487758072", @from_value="10", @from_type="grams", @to_type="pounds">
```

### Using Results

```ruby
>> result = wam.lookup("10", "grams", "pounds")
=> #<WeightsAndMeasures::ResultModel:0x007ff6761906f8 @valid=true, @result="0.022046226218487758072", @from_value="10", @from_type="grams", @to_type="pounds">

>> result.valid
=> true

>> result.result
=> "0.022046226218487758072"

>> result.from_value
=> "10"

>> result.to_type
=> "pounds"

>> result.from_type
=> "grams"
```



## Installation

```ruby
# In your Gemfile
gem 'weightsandmeasures', git: 'https://github.com/mbuckbee/Weights-And-Measures-Gem.git'
```    

# Units of Measure

The `from_unit` and `to_unit` parameters must both be from within the same category of measurement (no "how many inches in a cubic foot") and declared in either the long or short form.

Mixing and matching long and short units is fine (comparing 'yard' to 'mm')

## Units of Length
<blockquote>
<table>
    
    <tr>
        <td colspan='3'>US MEASUREMENTS</td>
    </tr>
    
    <tr>
        <th>LONG</th>
        <th>SHORT</th>
        
    </tr>
    
    <tr>
        <td>point</td>
        <td>-</td>
        
    </tr>
    
    <tr>
        <td>pica</td>
        <td>-</td>
        
    </tr>
    
    <tr>
        <td>inch</td>
        <td>in</td>
        
    </tr>
    
    <tr>
        <td>foot</td>
        <td>ft</td>
        
    </tr>
    
    <tr>
        <td>yard</td>
        <td>yd</td>
        
    </tr>
    
    <tr>
        <td>mile</td>
        <td>mi</td>
        
    </tr>
    
    <tr>
        <td></td>
    </tr>
    
    <tr>
        <td colspan='3'>METRIC MEASUREMENTS</td>
    </tr>
    
    <tr>
        <th>LONG</th>
        <th>SHORT</th>
        
    </tr>    
    
<tr><td>decameter</td><td>dam</td></tr>

<tr><td>hectometer</td><td>hm</td></tr>

<tr><td>kilometer</td><td>km</td></tr>

<tr><td>megameter</td><td>Mm</td></tr>

<tr><td>gigameter</td><td>Gm</td></tr>

<tr><td>terameter</td><td>Tm</td></tr>

<tr><td>petameter</td><td>Pm</td></tr>

<tr><td>exameter</td><td>Em</td></tr>

<tr><td>zettameter</td><td>Zm</td></tr>

<tr><td>yottameter</td><td>Ym</td></tr>

<tr><td>meter</td><td>m</td></tr>

<tr><td>decimeter</td><td>dm</td></tr>

<tr><td>centimeter</td><td>cm</td></tr>

<tr><td>millimeter</td><td>mm</td></tr>

<tr><td>micrometer</td><td>μm</td></tr>

<tr><td>nanometer</td><td>nm</td></tr>

<tr><td>picometer</td><td>pm</td></tr>

<tr><td>femtometer</td><td>fm</td></tr>

<tr><td>attometer</td><td>am</td></tr>

<tr><td>zeptometer</td><td>zm</td></tr>

<tr><td>yoctometer</td><td>ym</td></tr>



    
</table>
</blockquote>

## Units of Area
<blockquote>
<table>
    
    <tr>
        <td colspan='3'>US MEASUREMENTS</td>
    </tr>
    
    <tr>
        <th>LONG</th>
        <th>SHORT</th>
    </tr>
    
    <tr>
        <td>square inch</td>
        <td>sq in</td>
        
    </tr>    
    
    <tr>
        <td>square foot</td>
        <td>sq ft</td>
        
    </tr>

    <tr>
        <td>square yard</td>
        <td>sq yd</td>
    </tr>

    
    <tr>
        <td>square chain</td>
        <td>sq ch</td>
        
    </tr>
    
    <tr>
        <td>acre</td>
        <td>-</td>
        
    </tr>
    
    <tr>
        <td>square mile</td>
        <td>sq mi</td>
        
    </tr>
    
    <tr>
        <td>&nbsp;</td>
    </tr>
    
    <tr>
        <td colspan='3'>METRIC MEASUREMENTS</td>
    </tr>
    
    <tr>
        <th>LONG</th>
        <th>SHORT</th>
    </tr>

            
        <tr><td>square decameter</td><td>sq dam</td></tr>
        
        <tr><td>square hectometer</td><td>sq hm</td></tr>
        
        <tr><td>square kilometer</td><td>sq km</td></tr>
        
        <tr><td>square megameter</td><td>sq Mm</td></tr>
        
        <tr><td>square gigameter</td><td>sq Gm</td></tr>
        
        <tr><td>square terameter</td><td>sq Tm</td></tr>
        
        <tr><td>square petameter</td><td>sq Pm</td></tr>
        
        <tr><td>square exameter</td><td>sq Em</td></tr>
        
        <tr><td>square zettameter</td><td>sq Zm</td></tr>
        
        <tr><td>square yottameter</td><td>sq Ym</td></tr>
        
        <tr><td>square meter</td><td>sq m</td></tr>
        
        <tr><td>square decimeter</td><td>sq dm</td></tr>
        
        <tr><td>square centimeter</td><td>sq cm</td></tr>
        
        <tr><td>square millimeter</td><td>sq mm</td></tr>
        
        <tr><td>square micrometer</td><td>sq μm</td></tr>
        
        <tr><td>square nanometer</td><td>sq nm</td></tr>
        
        <tr><td>square picometer</td><td>sq pm</td></tr>
        
        <tr><td>square femtometer</td><td>sq fm</td></tr>
        
        <tr><td>square attometer</td><td>sq am</td></tr>
        
        <tr><td>square zeptometer</td><td>sq zm</td></tr>
        
        <tr><td>square yoctometer</td><td>sq ym</td></tr>
        
    
    
</table>
</blockquote>

## Units of Capacity & Volume
<blockquote>
<table>
    
    <tr>
        <td colspan='3'>US MEASUREMENTS</td>
    </tr>
    
    <tr>
        <th>LONG</th>
        <th>SHORT</th>
    </tr>
    
            
        <tr><td>cubic inch</td><td>cu in</td></tr>
        <tr><td>cubic foot</td><td>cu ft</td></tr>
        <tr><td>cubic yard</td><td>cu yd</td></tr>
        <tr><td>acre foot</td><td>-</td></tr>
    
    
    <tr><td colspan='3'>&nbsp;</td></tr>
    
    <tr>
        <td colspan='3'>METRIC MEASUREMENTS</td>
    </tr>
    
    <tr>
        <th>LONG</th>
        <th>SHORT</th>
    </tr>
        
<tr><td>cubic decameter</td><td>cu dam</td></tr>

<tr><td>cubic hectometer</td><td>cu hm</td></tr>

<tr><td>cubic kilometer</td><td>cu km</td></tr>

<tr><td>cubic megameter</td><td>cu Mm</td></tr>

<tr><td>cubic gigameter</td><td>cu Gm</td></tr>

<tr><td>cubic terameter</td><td>cu Tm</td></tr>

<tr><td>cubic petameter</td><td>cu Pm</td></tr>

<tr><td>cubic exameter</td><td>cu Em</td></tr>

<tr><td>cubic zettameter</td><td>cu Zm</td></tr>

<tr><td>cubic yottameter</td><td>cu Ym</td></tr>

<tr><td>cubic meter</td><td>cu m</td></tr>

<tr><td>cubic decimeter</td><td>cu dm</td></tr>

<tr><td>cubic centimeter</td><td>cu cm</td></tr>

<tr><td>cubic millimeter</td><td>cu mm</td></tr>

<tr><td>cubic micrometer</td><td>cu μm</td></tr>

<tr><td>cubic nanometer</td><td>cu nm</td></tr>

<tr><td>cubic picometer</td><td>cu pm</td></tr>

<tr><td>cubic femtometer</td><td>cu fm</td></tr>

<tr><td>cubic attometer</td><td>cu am</td></tr>

<tr><td>cubic zeptometer</td><td>cu zm</td></tr>

<tr><td>cubic yoctometer</td><td>cu ym</td></tr>

        
    
</table>
</blockquote>

## Units of Fluid Volume
<blockquote>
<table>
    
    <tr>
        <td colspan='3'>US MEASUREMENTS</td>
    </tr>
    
    <tr>
        <th>LONG</th>
        <th>SHORT</th>
    </tr>
    
            
        <tr><td>teaspoon</td><td>tsp</td></tr>
        <tr><td>dessertspoon</td><td>-</td></tr>
        <tr><td>tablespoon</td><td>Tbsp</td></tr>
        <tr><td>gill</td><td>gi</td></tr>
        <tr><td>cup</td><td>-</td></tr>
        <tr><td>ounce fluid</td><td>oz f</td></tr>
        <tr><td>pint</td><td>pt</td></tr>
        <tr><td>quart</td><td>qt</td></tr>
        <tr><td>gallon</td><td>gal</td></tr>
        <tr><td>peck</td><td>pk</td></tr>
        <tr><td>bushel</td><td>bu</td></tr>
        <tr><td>barrel</td><td>bbl</td></tr>
        <tr><td>hogshead</td><td>-</td></tr>
        
    <tr><td colspan='3'>&nbsp;</td></tr>
    
    <tr>
        <td colspan='3'>METRIC MEASUREMENTS</td>
    </tr>
    
    <tr>
        <th>LONG</th>
        <th>SHORT</th>
    </tr>

<tr><td>decaliter</td><td>dal</td></tr>

<tr><td>hectoliter</td><td>hl</td></tr>

<tr><td>kiloliter</td><td>kl</td></tr>

<tr><td>megaliter</td><td>Ml</td></tr>

<tr><td>gigaliter</td><td>Gl</td></tr>

<tr><td>teraliter</td><td>Tl</td></tr>

<tr><td>petaliter</td><td>Pl</td></tr>

<tr><td>exaliter</td><td>El</td></tr>

<tr><td>zettaliter</td><td>Zl</td></tr>

<tr><td>yottaliter</td><td>Yl</td></tr>

<tr><td>liter</td><td>l</td></tr>

<tr><td>deciliter</td><td>dl</td></tr>

<tr><td>centiliter</td><td>cl</td></tr>

<tr><td>milliliter</td><td>ml</td></tr>

<tr><td>microliter</td><td>μl</td></tr>

<tr><td>nanoliter</td><td>nl</td></tr>

<tr><td>picoliter</td><td>pl</td></tr>

<tr><td>femtoliter</td><td>fl</td></tr>

<tr><td>attoliter</td><td>al</td></tr>

<tr><td>zeptoliter</td><td>zl</td></tr>

<tr><td>yoctoliter</td><td>yl</td></tr>


        
</table>
</blockquote>

## Units of Mass
<blockquote>
<table>
    
    <tr>
        <td colspan='3'>US MEASUREMENTS</td>
    </tr>
    
    <tr>
        <th>LONG</th>
        <th>SHORT</th>
    </tr>
    
            
        <tr><td>grain</td><td>gr</td></tr>
        <tr><td>dram</td><td>dr</td></tr>
        <tr><td>ounce</td><td>oz</td></tr>
        <tr><td>pound</td><td>lb</td></tr>
        <tr><td>hundredweight</td><td>cwt</td></tr>
        <tr><td>ton</td><td>-</td></tr>
        <tr><td>long ton</td><td>-</td></tr>
        <tr><td>pennyweight</td><td>dwt</td></tr>
        <tr><td>troy ounce</td><td>oz t</td></tr>
        <tr><td>troy pound</td><td>lb t</td></tr>
        
    <tr><td colspan='3'>&nbsp;</td></tr>
    
    <tr>
        <td colspan='3'>METRIC MEASUREMENTS</td>
    </tr>
    
    <tr>
        <th>LONG</th>
        <th>SHORT</th>
    </tr>
            
        <tr><td>decagram</td><td>dag</td></tr>
        
        <tr><td>hectogram</td><td>hg</td></tr>
        
        <tr><td>kilogram</td><td>kg</td></tr>
        
        <tr><td>megagram</td><td>Mg</td></tr>
        
        <tr><td>gigagram</td><td>Gg</td></tr>
        
        <tr><td>teragram</td><td>Tg</td></tr>
        
        <tr><td>petagram</td><td>Pg</td></tr>
        
        <tr><td>exagram</td><td>Eg</td></tr>
        
        <tr><td>zettagram</td><td>Zg</td></tr>
        
        <tr><td>yottagram</td><td>Yg</td></tr>
        
        <tr><td>gram</td><td>g</td></tr>
        
        <tr><td>decigram</td><td>dg</td></tr>
        
        <tr><td>centigram</td><td>cg</td></tr>
        
        <tr><td>milligram</td><td>mg</td></tr>
        
        <tr><td>microgram</td><td>μg</td></tr>
        
        <tr><td>nanogram</td><td>ng</td></tr>
        
        <tr><td>picogram</td><td>pg</td></tr>
        
        <tr><td>femtogram</td><td>fg</td></tr>
        
        <tr><td>attogram</td><td>ag</td></tr>
        
        <tr><td>zeptogram</td><td>zg</td></tr>
        
        <tr><td>yoctogram</td><td>yg</td></tr>
        
    
    
</table>
</blockquote>



## Result Attribute Descriptions

| Attribute       | Type    | Description |
| --------------- | ------- | -------- |
|`valid`|boolean|Was the coversion successful and produced a valid result|
|`result`|string|The result of the conversion|
|`from_value`|string|The value being converted from|
|`from_type`|string|The type of the value being converted from|
|`to_type`|string|The type being converted to|



## Live Interactive Testing

Doublecheck results, use a Live Proxy and check your API Key with the interactive documentation at:

http://docs.weightsandmeasuresexp.apiary.io/

You will need your `WEIGHTSANDMEASURES_API_KEY` from the setup screen where you've provisioned the Weights and Measures add-on.

## Troubleshooting

As a sanity check it is sometimes useful to bypass your app stack and check the endpoint, your API Key and parameters directly.

*Test with your browser*

```
# Modify the following to use your actual API Key
'https://weightsandmeasures.expeditedaddons.com/?api_key=REPLACE_WITH_YOUR_WEIGHTSANDMEASURES_API_KEY&from_type=grams&from_value=10&to_type=pounds'
```

A successful call will return your requested data with a HTTP result code of `200` and be in `JSON` format. We recommend the [JSON Formatter](https://chrome.google.com/webstore/detail/json-formatter/bcjindcccaagfpapjjmafapmmgkkhgoa?hl=en) extension as a useful tool. 

## In Development

The Weights and Measures gem relies upon the environment variable `ENV['WEIGHTSANDMEASURES_API_KEY']` being present and correctly configured to authenticate to the service. You will need to have this variable present in your local environment for the gem to work correctly.

If you're using Heroku, please read their [Guide to Heroku Local](https://devcenter.heroku.com/articles/heroku-local) which has instructions on easily copying your config values to your development environment.

**DOTENV**

[https://github.com/bkeepers/dotenv](https://github.com/bkeepers/dotenv)

If you're trying to use Weights and Measures in your local development or test environment with the [dotenv](https://github.com/bkeepers/dotenv) gem be sure that you are loading the `dotenv-rails` gem with the `rails-now` requirement. 

```ruby
# Example Gemfile excerpt

gem 'dotenv-rails', :require => 'dotenv/rails-now'
gem 'iptoearth'
```

**FOREMAN**

[https://github.com/ddollar/foreman](https://github.com/ddollar/foreman)

If you're having issues with configuring `dotenv`, you might want to try [foreman](https://github.com/ddollar/foreman) which will also autoload `.env` files in your local environment.


**Test in the Rails console**

Launch `rails c` in your development project directory and at the prompt enter `ENV[WEIGHTSANDMEASURES_API_KEY]` which, if you've configured your development environment correctly should display your API Key.

## Issues and Security Concerns

Please email [support@expeditedaddons.com](mailto:support@expeditedaddons.com)

## License

The Weights and Measures gem is licensed under the MIT license.

## Additional Add-ons

If you found Weights and Measures useful, please check out our other similarly structured services and gems.

<table>
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/qrackajack_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/qrackajack'>QRACKAJACK</a></h5>
      <p>Generate QR codes for use anywhere.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/weightsandmeasures_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/weightsandmeasures'>WEIGHTS & MEASURES</a></h5>
      <p>Conversational interface to convert between units of measure.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/scrapetastic_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/scrapetastic'>SCRAPETASTIC</a></h5>
      <p>Pull structured data from any website.</p>
    </td>

  </tr>
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/useragentidentifier_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/useragentidentifier'>USER AGENT IDENTIFIER</a></h5>
      <p>Boost User Agent identification with our always up to date UA parsing.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/ipinvestigator_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/ipinvestigator'>IP INVESTIGATOR</a></h5>
      <p>Check if an IP address is hosting Proxies, Bots or Malware.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/resizer_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/scrapetastic'>RESIZER</a></h5>
      <p>Resize images for Retina use, thumbnails and social promotion.</p>
    </td>

  </tr>  
  
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/urlxray_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/urlxray'>URL X-RAY</a></h5>
      <p>Pull website status and domain information for any URL.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/webtopdf_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/webtopdf'>WEB TO PDF</a></h5>
      <p>Generate PDF Documents from Webpages.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/watermarker_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/watermarker'>WATERMARKER</a></h5>
      <p>Identify and protect images by adding a watermark to them.</p>
    </td>

  </tr>    
  
  
  <tr>
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/iptoearth_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/iptoearth'>IP TO EARTH</a></h5>
      <p>Find the Country and City of origin for an IP Address.</p>
    </td>
    
    <td align='center' width='33%'>
       <img src="https://app.expeditedaddons.com/geocody_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/geocody'>GEOCODY</a></h5>
      <p>Convert mailing addresses into Lat,Long Coordinates.</p>
    </td>
    
    <td align='center' width='33%' cellpadding='10'>
       <img src="https://app.expeditedaddons.com/realemail_icon.png" width="70"/>
      <h5><a href='//www.expeditedaddons.com/realemail'>REAL EMAIL</a></h5>
      <p>Reduce bounced emails and errors by validating emails against MX records.</p>
    </td>

  </tr>    

</table>





