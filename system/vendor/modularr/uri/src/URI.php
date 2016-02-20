<?php class URI
{
    public function __construct($folder=null)
    {
        $this->folder = $folder;
        if(!empty($this->folder))
        {
            $this->uri_string = explode($this->folder, $_SERVER['REQUEST_URI']);
            $this->uri_string = $this->uri_string['1'];
        }
        else
        {
            $this->uri_string = $_SERVER['REQUEST_URI'];
        }

        $this->segments = explode('/', $this->uri_string);

        $this->base = 'http://';
        $this->base .= $_SERVER['SERVER_NAME'];
        $this->base .= $this->folder;
        #$this->base .= $_SERVER['REQUEST_URI'];
    }

	public function slash_segment($n, $where = 'trailing', $which = 'segment')
	{
		$leading = $trailing = '/';

		if ($where === 'trailing')
		{
			$leading	= '';
		}
		elseif ($where === 'leading')
		{
			$trailing	= '';
		}

		return $leading.$this->$which($n).$trailing;
	}

	public function segment($n, $no_result = NULL)
	{
		return (!empty($this->segments[$n])) ? $this->segments[$n] : $no_result;
	}

	public function total_segments()
	{
		return count($this->segments);
	}

	public function uri_string()
	{
		return $this->uri_string;
	}
}
